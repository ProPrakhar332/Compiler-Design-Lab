%{
#include<stdio.h>
#include<string.h>
%}
%%
^[a-zA-Z_$][a-zA-Z0-9_$]* printf("Valid Identifier");
.* printf("Invalid identifier");
%%
int yywrap(void){return 0;}
int main()
{
yylex();
return 0;
}

