% Find last element in list:
% c(lesson2_task01).
% lesson2_task01:last([a, b, c, d, f]).
% f

-module(lesson2_task01).
-export([last/1]).

% If list is empty then nil
last([]) ->
    nil;

% If one element only it is last
last([H|[]])->
H;

% Kick HEAD and continue with TAIL
last([_ | Tail]) ->
    last(Tail).