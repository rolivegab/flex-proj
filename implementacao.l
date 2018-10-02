%{
	#include <stdio.h>
%}

%%

[ \t\n]
[0-9]*					{printf("Número: %s\n", yytext);}
"WHILE"					{printf("WHILE: %s\n", yytext);}
"ENDWHILE"				{printf("ENDWHILE: %s\n", yytext);}
"DO"					{printf("DO: %s\n", yytext);}
"IF"					{printf("IF: %s\n", yytext);}
"ENDIF"					{printf("ENDIF: %s\n", yytext);}
"FOR"					{printf("FOR: %s\n", yytext);}
"ENDFOR"				{printf("ENDFOR: %s\n", yytext);}
"ELSE"					{printf("ELSE: %s\n", yytext);}
"ENDELSE"				{printf("ENDELSE: %s\n", yytext);}
"PROCEDURE"				{printf("PROCEDURE: %s\n", yytext);}
"TYPEDEF"				{printf("TYPEDEF: %s\n", yytext);}
"+"						{printf("OP_SOMA: %s\n", yytext);}
"-"						{printf("OP_SUB: %s\n", yytext);}
"*"						{printf("OP_MULT: %s\n", yytext);}
"/"						{printf("OP_DIV: %s\n", yytext);}
"INT"					{printf("TYPE_INT: %s\n", yytext);}
"REAL"					{printf("TYPE_REAL: %s\n", yytext);}
"STRING"				{printf("TYPE_STRING: %s\n", yytext);}
"CHAR"					{printf("TYPE_CHAR: %s\n", yytext);}
"=="|"<="|">="|"<"|">"	{printf("OP_RELAC: %s\n", yytext);}
"="						{printf("OP_ATRIB: %s\n", yytext);}
"END"					{printf("END: %s\n", yytext);}
"RETURN"				{printf("RETURN: %s\n", yytext);}
"BREAK"					{printf("BREAK: %s\n", yytext);}
"\|\|"|"&&"				{printf("OP_LOGICO: %s\n", yytext);}
";"						{printf("SEMI: %s\n", yytext);}
[a-zA-Z][a-zA-Z0-9]*	{printf("Variável: %s\n", yytext);}
.						{printf("Caractere invalido!\n");}

%%

int main() {
	yylex();

	return 0;
}