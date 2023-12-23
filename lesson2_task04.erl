% Find quantity of elements in a list.

% 1> lesson2_task04:lght([]).
% 0
% 2> lesson2_task04:lght([a, b, c, d]).
% 4


-module(lesson2_task04).
-export([lght/1]).

lght([]) ->
    0;

lght([Head | []]) ->
    1;

lght([Head | Tail]) ->
    1 + lght(Tail).


