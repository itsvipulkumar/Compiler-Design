%{
#include<stdio.h>
%}

%% 
if |
else |
return |
int  {printf("%s is a keyword ",yytext);}
[0-9]+ {printf("%s is a number ",yytext);}
[a-zA-Z]+ {printf("%s is a words ",yytext);}


. {ECHO;}

%% 
int main()


{
    yylex();
}

int yywrap()
{
    return 1;
}