% Count number of elements to list
% c(lesson2_task10).

%lesson2_task10:encode([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
%[{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]

-module(lesson2_task10).
-export([encode/1]).

encode([])->
[];
encode([[Count,Elem]|[Elem|[]]])->
[[Count+1,Elem]];
encode([[Count,Elem]|[Elem|T]])->
encode([[Count+1,Elem]|T]);
encode([[Count,Elem1]|[Elem2|[]]])->
[[Count,Elem1]|[[1,Elem2]]];
encode([[Count,Elem1]|[Elem2|T]])->
[[Count,Elem1]|encode([[1,Elem2]|T])];
encode([H|T])->
encode([[1,H]|T]).