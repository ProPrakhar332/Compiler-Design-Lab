%{
#include<stdio.h>
#include<string.h>
%}

%%
^[a-z0-9][a-z0-9_]*[@][a-z0-9][a-z0-9]*[.][a-z][a-z]* {printf("Valid Email");}
.* {printf("Invalid Email");}
%%

int yywrap(void){};
int main()
{
	yylex();
	return 0;
}
