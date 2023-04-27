%{
    #include<stdio.h>
    int cmt=0;
%}


%%

"//"[a-zA-Z0-9 \t\n]* {cmt++;}

%%
int main()
{
    yylex();
}
int yywrap()
{
    return 1;
}