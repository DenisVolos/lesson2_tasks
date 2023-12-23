% Check if palindrome
% c(lesson2_task06).

%lesson2_task06:ifplndr([1,2,3,2,1]).
%true


-module(lesson2_task06).
-export([ifplndr/1]).

ifplndr(Ls) ->
    Ls == lesson2_task05:ral(Ls).
    
    