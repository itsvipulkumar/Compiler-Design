%{
    #include<stdio.h>
%}

%%

int |
float | 
while |
else {ECHO;printf(" : keywords\n");}
[{},();]  {ECHO;printf(" : Seprator\n");}
[+-=/%*++--<>]  {ECHO;printf(" : Operator\n");}
[a-zA-Z]* {ECHO;printf(" : Identifier\n");}
[&$@&]  {ECHO;printf(" : Sepcial char\n");}

.|\n ;
%%

int main()
{
    yylex();
}
int yywrap()
{
    return 1;
}