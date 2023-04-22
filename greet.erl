-module(greet).

%%  loopyness in erlang

-export([greet/2]).

greet([], _) ->
    true;
greet([F | R], X) ->
    io:fwrite("Count -> ~w HEAD -> ~p TAIL -> ~w~n", [X, F, R]),
    greet(R, X + 1).
