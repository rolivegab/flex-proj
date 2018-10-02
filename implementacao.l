%{
	#include <stdio.h>
%}

%%

[ \t\n]
[0-9]*					{printf("Número: %s\n", yytext);}
"while"					{printf("WHILE: %s\n", yytext);}
"begin"					{printf("BLOCK_BEGIN: %s\n", yytext);}
"end"					{printf("BLOCK_END %s \n", yytext);}
"do"					{printf("DO: %s\n", yytext);}
"if"					{printf("IF: %s\n", yytext);}
"then"					{printf("THEN: %s\n", yytext);}
"else"					{printf("ELSE: %s\n", yytext);}
";"						{printf("SEMI: %s\n", yytext);}
":="					{printf("ASSIGN: %s\n", yytext);}
[a-zA-Z][a-zA-Z0-9]*	{printf("Variável: %s\n", yytext);}
.						{printf("Caractere invalido!\n");}

%%

int main() {
	yylex();

	return 0;
}