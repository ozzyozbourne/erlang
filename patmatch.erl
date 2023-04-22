-module(patmatch).

%% Lists in erlang

-export([getType/1]).

getType(N) when N =< 12 -> child;
getType(N) when N < 18 -> teen;
getType(_) -> adult.
