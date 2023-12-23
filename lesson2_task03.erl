% Find N_th element in list
% c(lesson2_task03).

% lesson2_task03:n_th([a, b, c, d, e, f], 4).
% d
% lesson2_task03:n_th([a, b, c, d, e, f], 10).
% undefined

-module(lesson2_task03).
-export([n_th/2]).

n_th([Head | _], 0) ->
    Head;

n_th([_ | Tail], Index) -> 
    n_th(Tail, Index - 1).
