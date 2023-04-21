-module(factorial).

%% Factorial in erlang
-export([factorial/1]).

factorial(1) -> 1;
factorial(N) -> N * factorial(N - 1).
