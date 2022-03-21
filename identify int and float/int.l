%{
#include<stdio.h>
#include<string.h>
%}
%%
[0-9]* printf("Integer");
[0-9]*[.][0-9]* printf("Float");
%%
int yywrap(void){return 0;}
int main()
{
yylex();
return 0;
}

