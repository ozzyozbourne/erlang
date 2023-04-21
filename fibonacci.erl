-module(fibonacci).

%% Calulate fibonacci in erlang

-export([fibonacci/1]).

%f0 -> 0
%f1 -> 1
%fn -> fn-1 + fn -2

fibonacci(1) -> 1;
fibonacci(0) -> 0;
fibonacci(N) -> fibonacci(N - 1) + fibonacci(N - 2).
