%{
#include<stdio.h>
int lc=0,sc=0,tc=0,wc=0;
%}

%%
\n {lc++;}
[ ] {sc++;}
\t {tc++;}
. {wc++;}
%%

int yywrap() {return 1;}
int main()
{
	yylex();
	printf("\n lines are: %d",lc);
	printf("\n space are: %d",sc);
	printf("\n tab are: %d",tc);
	printf("\n word are: %d",wc);
	printf("\n");
	return 0;
	
}
