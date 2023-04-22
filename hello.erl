-module(hello).

%% My new Hello World of the beam

-export([hello_world/0, hello_world/1]).

hello_world() ->
    hello_world.

hello_world(X) -> io:fwrite("Hello -> ~s Welcome to the circus", [X]).
