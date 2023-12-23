% Reverse a list
% c(lesson2_task05).
% lesson2_task05:ral([1,2,3]).
% [3,2,1]


-module(lesson2_task05).
-export([ral/1]).

ral(Ls) ->
    iral(Ls, []).

iral([], Opp) ->
    Opp;

iral([Head | Tail], Opp) ->
    iral(Tail, [Head | Opp]).


