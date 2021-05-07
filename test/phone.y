%token D
%union{
  result Result
  part string
  ch byte
}

%type <result> phone
%type <part> area part1 part2

phone:
  area part1 part2
| area '-' part1 '-' part2
area: D D D
part1: D D D
part2: D D D D