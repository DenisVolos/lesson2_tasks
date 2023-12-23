% Remove duplicates
% c(lesson2_task08).

%lesson2_task08:rdpl([a,a,a,a,b,c,c,a,d,e,e,e,e]).
%[a, b, c, a, d, e]

-module(lesson2_task08).
-export([rdpl/1]).

rdpl([A, A | Tail])->
    rdpl([A | rdpl(Tail)]);

rdpl([A, B | Tail]) ->
    [A, B | rdpl(Tail)];

rdpl(Ls) ->
    Ls.