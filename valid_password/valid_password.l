%{
#include<stdio.h>
#include<string.h>
int uc=0,lc=0,spl=0,dig=0,len=0;
%}
%%
[A-Z] {++uc;len++;}
[a-z] {++lc;len++;}
[0-9] {++dig;len++;}
[$&+, :;=?@#|'<>-^*()%!] {++spl;len++;}

%%

int yywrap(void){}

int main()
{
	yylex();
	if(uc==0||lc==0||dig==0||spl==0||len<8)
	{
		printf("Invalid Password\n");
		printf(uc==0?"No Upper Case Present\n":"");
		printf(lc==0?"No Lower Case Present\n":"");
		printf(dig==0?"No Digit Present\n":"");
		printf(spl==0?"No Special Character Present\n":"");
		printf(len<8?"Password Length less than 8 characters\n":"");
	}
	else
		printf("Valid Password\n");
	return 0;
}
