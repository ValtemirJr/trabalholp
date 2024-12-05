module TypeChecker where 

import Lexer 

type Ctx = [(String, Ty)]

typeof :: Ctx -> Expr -> Maybe Ty 
typeof _ (Num _) = Just TNum 
typeof _ BTrue = Just TBool
typeof _ BFalse = Just TBool
typeof ctx (Not e1) = case typeof ctx e1 of
                           Just TBool -> Just TBool
                           _ -> Nothing
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           _ -> Nothing 
typeof ctx (Sub e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           _ -> Nothing  
typeof ctx (Mul e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           _ -> Nothing                            
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TBool, Just TBool) -> Just TBool
                           _ -> Nothing
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TBool, Just TBool) -> Just TBool
                           _ -> Nothing                           
typeof ctx (Eq e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just t1, Just t2) | t1 == t2 -> Just TBool 
                                             | otherwise -> Nothing 
                          _ -> Nothing
typeof ctx (GThen e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TBool
                           _ -> Nothing                         
typeof ctx (If e e1 e2) = case typeof ctx e of 
                            Just TBool -> case (typeof ctx e1, typeof ctx e2) of 
                                            (Just t1, Just t2) | t1 == t2 -> Just t1 
                                                               | otherwise -> Nothing
                                            _ -> Nothing
                            _ -> Nothing
typeof ctx (Var v) = lookup v ctx 
typeof ctx (Lam v t1 b) = let ctx' = (v, t1):ctx 
                            in case typeof ctx' b of 
                                 Just t2 -> Just (TFun t1 t2)
                                 _       -> Nothing                                
typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just (TFun t11 t12), Just t2) -> if t11 == t2 
                                                             then Just t12
                                                             else Nothing 
                           _  -> Nothing
typeof ctx (Paren e) = typeof ctx e

typeof ctx (Tuple es) = 
    let types = map (typeof ctx) es
    in if all (`elem` [Just TNum, Just TBool]) types 
       then Just (TTuple (map (\(Just t) -> t) types))
       else Nothing

typeof ctx (Record fields) = 
    let fieldTypes = map (\(name, value) -> (name, typeof ctx value)) fields
    in if all (\(_, t) -> t /= Nothing) fieldTypes
       then Just (TRecord [(name, t) | (name, Just t) <- fieldTypes])
       else Nothing
       
typeof ctx (Project e field) = case typeof ctx e of
    Just (TRecord fields) -> lookup field fields
    _ -> Nothing

typecheck :: Expr -> Expr 
typecheck e = case typeof [] e of 
                Just _ -> e 
                _      -> error ("Erro verificando tipo da expressão: " ++ show e)
