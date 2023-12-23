% Pack duplicates
% c(lesson2_task09).

%lesson2_task09:pack([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
%[[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]


-module(lesson2_task09).
-export([pack/1]).

pack([])->
[];
pack([H|[]])->
[H];
pack([[H|T1]|[H|T2]])->
pack([[H|[H|T1]]|T2]);
pack([[H1|T1]|[H2|[]]])->
[[H1|T1],[H2]];
pack([[H1|T1]|[H2|T2]])->
[[H1|T1]|pack([H2|T2])];
pack([H|[H|T]])->
pack([[H,H]|T]);
pack([H1|[H2|T]])->
[[H1]|pack([H2|T])].