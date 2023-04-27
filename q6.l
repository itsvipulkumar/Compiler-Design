/* LEX code to replace a word with another taking input from file */

%{
#include<stdio.h>
#include<string.h>

char replace_with [] = "_";
char replace [] =" ";

%}

%%

[ ] { if(strcmp(yytext, replace)==0)
				fprintf(yyout, "%s", replace_with);
				else
					fprintf(yyout, "%s", yytext);}

.		 fprintf(yyout, "%s", yytext);

%%

int yywrap()
{
	return 1;
}

int main()
{
	
	yyin=fopen("input.txt", "r");
	yyout=fopen("output.txt", "w");
	
		yylex();
}
