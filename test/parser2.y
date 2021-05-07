%union{
    str string
    result Result
}
%token <str> String
%token <str>  Haha
%type <result> main
%start main
%%

main: String
{
    $$ = Result($1)
}