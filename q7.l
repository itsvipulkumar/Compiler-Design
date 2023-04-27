%{
    #include<stdio.h>
%}

%%

"//"[a-zA-Z0-9 ]* {}
"/*"[a-zA-Z0-9 \n\t]+"*/" {}

%%
int main()
{
   
    yyout=fopen("out.c","w");
    yylex();

}

int yywrap()
{
    return 1;
}