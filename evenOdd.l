%{

    #include<stdio.h>
    #include<stdlib.h>
    int num=0;
%}
%% 
[0-9]+ {
    num=atoi(yytext);
    if(num%2==0)
    printf("Number is Even");
    else
    printf("Number is Odd");
}

.* {printf("Enter a valid number ");}
%%

int main()
{
    printf("Enter number \n");
    yylex();
}

int yywrap()
{
    return 1;
}