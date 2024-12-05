module Interpreter where 

import Lexer 

isValue :: Expr -> Bool
isValue BTrue = True 
isValue BFalse = True 
isValue (Num _) = True 
isValue (Lam _ _ _) = True
isValue (Tuple es) = all isValue es
isValue (Record fields) = all (isValue . snd) fields
isValue _ = False 

subst :: String -> Expr -> Expr -> Expr
subst x n b@(Var v) = if v == x then 
                        n 
                      else 
                        b 
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (Not e1) = Not (subst x n e1)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Eq e1 e2) = Eq (subst x n e1) (subst x n e2)
subst x n (GThen e1 e2) = GThen (subst x n e1) (subst x n e2)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Lam v t b) = if v == x then 
                          Lam v t b 
                        else 
                          Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Tuple es) = Tuple (map (subst x n) es)
subst x n (Record fields) = Record [(name, subst x n expr) | (name, expr) <- fields]
subst _ _ e = e

step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num nv) e2) = Add (Num nv) (step e2)
step (Add e1 e2) = Add (step e1) e2 

step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num nv) e2) = Sub (Num nv) (step e2)
step (Sub e1 e2) = Sub (step e1) e2 

step (Mul (Num n1) (Num n2)) = Num (n1 * n2)
step (Mul (Num nv) e2) = Mul (Num nv) (step e2)
step (Mul e1 e2) = Mul (step e1) e2 

step (Not BTrue) = BFalse
step (Not BFalse) = BTrue
step (Not e) = Not (step e)

step (And BFalse _) = BFalse 
step (And BTrue e) = e 
step (And e1 e2) = And (step e1) e2 

step (Or BTrue _) = BTrue 
step (Or BFalse e) = e 
step (Or e1 e2) = Or (step e1) e2 

step (Eq e1 e2) | isValue e1 && isValue e2 = if e1 == e2 then 
                                               BTrue 
                                             else 
                                               BFalse
                | isValue e1 = Eq e1 (step e2)
                | otherwise = Eq (step e1) e2

step (GThen (Num n1) (Num n2)) = if n1 >= n2 then 
                                   BTrue 
                                 else 
                                   BFalse
step (GThen (Num nv) e2) = GThen (Num nv) (step e2)
step (GThen e1 e2) = GThen (step e1) e2 

step (If BTrue e1 _) = e1 
step (If BFalse _ e2) = e2 
step (If e e1 e2) = If (step e) e1 e2 

step (App (Lam v t b) e) | isValue e = subst v e b 
                         | otherwise = App (Lam v t b) (step e)
step (App e1 e2) = App (step e1) e2 

step (Paren e) = e

step (Tuple es) = 
    let (vs, es') = span isValue es 
    in if null es' then Tuple es 
                   else Tuple (vs ++ [step (head es')] ++ tail es')

step (Record fields) = 
    let (done, rest) = span (isValue . snd) fields
    in case rest of 
         [] -> Record fields
         ((name, expr):rest') -> Record (done ++ (name, step expr) : rest')

step (Project (Record fields) name) = 
    case lookup name fields of
      Just v | isValue v -> v
      Just e -> Project (Record (map (\(n, v) -> if n == name then (n, step v) else (n, v)) fields)) name
      Nothing -> error ("Campo '" ++ name ++ "' não encontrado!")

step e = e

eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)
