%{
    #include<stdio.h>
    int wc=0,lc=0,sc=0,cc=0,tc=0;
%}

%%

[\n] {lc++; cc+=yyleng;}
[ \t] {sc++; cc+=yyleng;}
[^\t] {tc++; cc+=yyleng;}
[^\t\n ]+ {wc++; cc+=yyleng;}

%%
int main(){
    yylex();

    printf("Words :%d\n",wc);
    printf("Spaces :%d\n",sc);
    printf("character :%d\n",cc);
    printf("lines :%d\n",lc);
    printf("Tabs :%d\n",tc);
    return 0;
}

int yywrap()
{
    return 1;
}