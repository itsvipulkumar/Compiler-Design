%{
    #include<stdio.h>
%}
%%

"hi" {printf("Hii bro");}
"bye" {printf("Okey will meet again");}
.* {printf("Shit");}

%%

int main()
{
   printf("Hello Enter your request");
    yylex();
}

int yywrap()
{
    return 1;
}