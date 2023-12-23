% Find last two elements in list
% c(lesson2_task02).
% lesson2_task02:last_two([a, b, c, d, f]).
% {d,f}


-module(lesson2_task02).
-export([last_two/1]).

last_two([X, Y | []]) ->
   {X, Y};
last_two([_ | TWO]) ->
    last_two(TWO).