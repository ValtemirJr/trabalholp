module Lexer where 

import Data.Char

data Expr = BTrue 
          | BFalse 
          | Not Expr 
          | Num Int 
          | Add Expr Expr 
          | Sub Expr Expr 
          | Mul Expr Expr
          | And Expr Expr
          | Or Expr Expr  
          | Eq Expr Expr
          | GThen Expr Expr
          | If Expr Expr Expr 
          | Var String 
          | Lam String Ty Expr 
          | App Expr Expr
          | Paren Expr
          | Tuple [Expr]         
          | Record [(String, Expr)] 
          | Project Expr String   
          deriving (Show, Eq)

data Ty = TBool 
        | TNum 
        | TFun Ty Ty 
        | TTuple [Ty]     
        | TRecord [(String, Ty)] 
        deriving (Show, Eq)

data Token = TokenTrue
           | TokenFalse 
           | TokenNot
           | TokenNum Int 
           | TokenAdd
           | TokenSub 
           | TokenMul 
           | TokenAnd
           | TokenOr 
           | TokenEq
           | TokenGThen
           | TokenIf
           | TokenThen
           | TokenElse 
           | TokenVar String
           | TokenLam 
           | TokenArrow
           | TokenColon
           | TokenLeftParen
           | TokenRightParen 
           | TokenBoolean 
           | TokenNumber
           | TokenLeftBrace
           | TokenRightBrace
           | TokenComma
           | TokenDot
           | TokenEquals
           deriving Show

lexer :: String -> [Token]
lexer [] = [] 
lexer ('{':cs) = TokenLeftBrace : lexer cs   
lexer ('}':cs) = TokenRightBrace : lexer cs  
lexer (',':cs) = TokenComma : lexer cs       
lexer ('.':cs) = TokenDot : lexer cs         
lexer ('=':cs) = TokenEquals : lexer cs  
lexer ('-':'>':cs) = TokenArrow : lexer cs 
lexer ('(':cs) = TokenLeftParen : lexer cs
lexer (')':cs) = TokenRightParen : lexer cs
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('-':cs) = TokenSub : lexer cs 
lexer ('*':cs) = TokenMul : lexer cs 
lexer ('!':cs) = TokenNot : lexer cs 
lexer ('\\':cs) = TokenLam : lexer cs 
lexer ('=':'=':cs) = TokenEq : lexer cs 
lexer ('>':'=':cs) = TokenGThen : lexer cs 
lexer (':': cs) = TokenColon : lexer cs 

lexer (c:cs) 
   | isSpace c = lexer cs 
   | isAlpha c = lexerKW (c:cs) 
   | isDigit c = lexerNum (c:cs)
   | otherwise = error $ "Unexpected character: " ++ [c]

lexerNum :: String -> [Token]
lexerNum cs = case span isDigit cs of 
                (num, rest) -> TokenNum (read num) : lexer rest

lexerKW :: String -> [Token]
lexerKW cs = case span isAlpha cs of 
               ("true", rest) -> TokenTrue : lexer rest 
               ("false", rest) -> TokenFalse : lexer rest 
               ("and", rest) -> TokenAnd : lexer rest 
               ("or", rest) -> TokenOr : lexer rest 
               ("if", rest) -> TokenIf : lexer rest 
               ("then", rest) -> TokenThen : lexer rest 
               ("else", rest) -> TokenElse : lexer rest
               ("Num", rest) -> TokenNumber : lexer rest 
               ("Bool", rest) -> TokenBoolean : lexer rest  
               (var, rest) -> TokenVar var : lexer rest

createTuple :: [Expr] -> Expr
createTuple = Tuple

createRecord :: [(String, Expr)] -> Expr
createRecord = Record

