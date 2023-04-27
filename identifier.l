%{
    #include<stdio.h>
%}

%% 

^[a-zA-Z _]+[a-zA-Z0-9]* {printf("Valid");}

.* {printf("Invalid");}

%%
int main()
{
    yylex();
    return 0;
}

int yywrap()
{return 1;}