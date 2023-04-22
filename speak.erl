-module(speak).

%% Processes in erlang

-export([run/0, say/2]).

say(_, 0) ->
    done;
say(What, Times) ->
    io:fwrite("~s ~w~n", [What, Times]),
    say(What, Times - 1).

run() ->
    spawn(speak, say, ["Hi", 3]),
    spawn(speak, say, ["Bye", 3]).
