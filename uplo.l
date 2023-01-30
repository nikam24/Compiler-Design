%{
	#include<stdio.h>	
%}

/* The Rules */
%%

[a-z]	{printf("Lower-Case\n");exit(0);}
[^a-z]	{printf("Upper-Case\n");exit(0);}
.;
%%

int main()
{
	printf("Enter an alphabet : ");

	// This funciton does the lexical analysis */
	yylex();

	return 0;
}

int yywrap(){
	return 1;
}