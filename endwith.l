%{
#include<stdio.h>
%}
%%

11$ {printf("Yes end with 11");}
.* {printf("No");}

%% 
int main()
{
    yylex();
}

int yywrap(){
    return 1;
}