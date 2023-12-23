% Count number of elements to list
% c(lesson2_task11).

%lesson2_task11:encode([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
%[{4,a},b,{2,c},{2,a},d,{4,e}]


-module(lesson2_task11).
-export([encode/1]).

encode([])->
[];
encode([[Count,Elem]|[Elem|[]]])->
[[Count+1,Elem]];
encode([[Count,Elem]|[Elem|T]])->
encode([[Count+1,Elem]|T]);
encode([[Count,Elem1]|[Elem2|[]]])->
[[Count,Elem1],Elem2];
encode([[Count,Elem1]|[Elem2,Elem2|T]])->
[[Count,Elem1]|encode([[2,Elem2]|T])];
encode([[Count,Elem1]|[Elem2|T]])->
[[Count,Elem1]|encode([Elem2|T])];
encode([Elem1,Elem1|T])->
encode([[2,Elem1]|T]);
encode([Elem1,Elem2|T])->
[Elem1|encode([Elem2|T])].