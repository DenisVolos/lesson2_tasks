% Make nice list
% c(lesson2_task07).

%lesson2_task07:nicelist([a,[],[b,[c,d],e]]).
%[a, b, c, d, e]

-module(lesson2_task07).
-export([nicelist/1]).

nicelist([])->
[] ;
nicelist([[]|T])->
nicelist(T);
nicelist([[H|T]|T2])->
nicelist([H|[T|T2]]);
nicelist([H|T])->
[H|nicelist(T)].