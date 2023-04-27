%{
    #include<stdio.h>
    int cmt=0;
%}
%%
[0-9]+"."[0-9]+ {printf("Float number");}
[0-9]+ {printf("Integer");}
%%
int main()
{
    yylex();
}
int yywrap()
{
    return 1;
}