-module(temp).

%% Atoms in erlang

-export([convert/2]).

convert(F, fahrenhiet) -> (F - 32) * 5 / 9;
convert(C, celsius) -> C * 9 / 5 + 32.
