%{
    #include<stdio.h>
%}

%%

("<"|"</")[a-zA-Z0-9]*">"   {fprintf(yyout,"%s\n", yytext); }
.|\n;

%%

int main()
{
    yyin=fopen("file.html","r");
    yyout=fopen("q8out.txt","w");
    yylex();
}

int yywrap(){
    return 1;
}
