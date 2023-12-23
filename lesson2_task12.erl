% ViceVersa Count number of elements to list
% c(lesson2_task12).

%lesson2_task12:vvcode([{4,a},b,{2,c},{2,a},d,{4,e}]).
%[a,a,a,a,b,c,c,a,a,d,e,e,e,e]


-module(lesson2_task12).
-export([vvcode/1]).

vvcode([])->
[];
vvcode([[2,X]|[]])->
[X,X];
vvcode([[Count,X]|[]])->
[X|vvcode([[Count-1,X]])];
vvcode([[2,X]|T])->
[X|[X|vvcode(T)]];
vvcode([[Count,X]|T])->
[X|vvcode([[Count-1,X]|T])];
vvcode([H|[[Count,X]|T]])->
[H|vvcode([[Count,X]|T])];
vvcode([H|[]])->
[H].