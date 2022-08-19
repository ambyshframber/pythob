%option noyywrap
        int tabs = 0;
%%
\{      {
            tabs += 1;
            printf(":");
            do_tabs();
        }
\}      tabs -= 1; do_tabs();
\;      do_tabs();
^[ \t]* ;
[ \t]+$ ;
\n      ;

%%

int main(void)
{
    yylex();
    printf("\n");
    return 0;
}
void do_tabs() {
    printf("\n");
    for (int i = 0; i < tabs; i++) {
        printf("\t");
    }
}
