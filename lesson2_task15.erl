% Triplicate elements
% c(lesson2_task15).

%lesson2_task15:triplicate([a, b, c], 3).
%[a, a, a, b, b, b, c, c, c]

- module(lesson2_task15).
- export([triplicate/1]).

triplicate([],_,_)->
[];
triplicate([_|T],0,Times)->
triplicate(T,Times,Times);
triplicate([H|T],Count,Times)->
[H|triplicate([H|T],Count-1,Times)].
triplicate([],_)->
[];
triplicate([H|T],Times)->
triplicate([H|T],Times,Times).