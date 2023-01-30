%{
	#include<stdio.h>	
%}

/* The Rules */
%%
[aeiou]	{printf("Vowel\n");exit(0);}
[^aeiou]	{printf("Consonant\n");exit(0);}
%%

int yywrap(){}

int main()
{
	printf("Enter an alphabet : ");
	
	// This funciton does the lexical analysis */
	yylex();

	return 0;
}