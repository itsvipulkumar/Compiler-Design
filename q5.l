%{
 #include<stdio.h>
 int wc=0,tc=0,sp=0,ch=0;
%}

%%
[ ] {sp++; }
[^ \t\n] {wc++;ch+=yyleng;}


%%

int main()
{
    yyin=fopen("q5.txt","r");
    yylex();
    printf("Space : %d\n",sp);
    printf("Words : %d\n",wc);
    printf("Chars : %d\n",ch);
}

int yywrap(){
    return 1;
}