% Duplicate elements
% c(lesson2_task14).

%lesson2_task14:duplicate([a, b, c, c, d]).
%[a, a, b, b, c, c, c, c, d, d]



-module(lesson2_task14).
-export([duplicate/1]).

duplicate([])->
[];
duplicate([H|T])->
[H|[H| duplicate(T)]].