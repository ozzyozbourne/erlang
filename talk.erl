-module(talk).

%% Message passing in erlang

-export([run/0, alice/0, bob/2, startAlice/0, startBob/1]).

alice() ->
    receive
        {message, BobNode} ->
            io:fwrite("Alice got a message from PID -> ~w~n", [bob]),
            BobNode ! message,
            alice();
        finished -> io:fwrite("Alice is finished ~n")
    end.

bob(0, AliceNode) ->  {alice, AliceNode}  ! finished,
    io:fwrite("Bob is finisged ~n", []);
bob(N, AliceNode) ->
    {alice, AliceNode} ! {message,self()},
    receive
        message -> io:fwrite("Bob got a message from PID -> ~-15w Count -> ~w~n", [alice, N])
    end, 
    bob(N -1, AliceNode).

run() ->
    register(alice, spawn(talk, alice, [])),
    register(bob, spawn(talk, bob, [3])).

startAlice() ->  register(alice, spawn(talk, alice, [])).

startBob(AliceNode) ->  spawn(talk, bob, [3, AliceNode]).