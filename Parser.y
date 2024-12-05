{
module Parser where 

import Lexer
}

%name parser 
%tokentype { Token }
%error { parseError } 

%token 
  true          { TokenTrue }
  false         { TokenFalse }
  '!'           { TokenNot }
  num           { TokenNum $$ }
  '*'           { TokenMul }
  '+'           { TokenAdd }
  '-'           { TokenSub }
  or            { TokenOr }
  and           { TokenAnd }
  "=="          { TokenEq }
  ">="          { TokenGThen }
  if            { TokenIf }
  then          { TokenThen }
  else          { TokenElse }
  var         { TokenVar $$ }
  '\\'        { TokenLam }
  "->"        { TokenArrow }
  ':'         { TokenColon }
  '('         { TokenLeftParen }
  ')'         { TokenRightParen }
  Bool        { TokenBoolean }
  Num         { TokenNumber }
  '{'         { TokenLeftBrace }
  '}'         { TokenRightBrace }
  ','         { TokenComma }
  '.'         { TokenDot }
  '='         { TokenEquals }


%nonassoc if then else 
%left "==" ">="
%left '+' '-' and or
%left '!'
%left '*'

%% 

Exp : true                        { BTrue }
    | false                       { BFalse }
    | '!' Exp                     { Not $2 }
    | num                         { Num $1 }
    | Exp '*' Exp                 { Mul $1 $3 }
    | Exp '+' Exp                 { Add $1 $3 }
    | Exp '-' Exp                 { Sub $1 $3 }
    | Exp or Exp                  { Or $1 $3 }
    | Exp and Exp                 { And $1 $3 }
    | Exp "==" Exp                { Eq $1 $3 }
    | Exp ">=" Exp                { GThen $1 $3 }
    | if Exp then Exp else Exp    { If $2 $4 $6 }
    | var                            { Var $1 }
    | '\\' var ':' Type "->" Exp     { Lam $2 $4 $6 }
    | '(' Exp ')'                    { Paren $2 }
    | Exp Exp                        { App $1 $2 }    
    | '{' ExpList '}'                   { createTuple $2 }
    | '{' FieldList '}'                 { createRecord $2 }
    | Exp '.' var                       { Project $1 $3 }

Type : Bool                              { TBool }
     | Num                               { TNum }
     | '(' Type "->" Type ')'            { TFun $2 $4 }

ExpList : Exp                           { [$1] }
        | ExpList ',' Exp               { $1 ++ [$3] }

FieldList : var '=' Exp                 { [($1, $3)] }
          | FieldList ',' var '=' Exp   { $1 ++ [($3, $5)] }


{
parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
}