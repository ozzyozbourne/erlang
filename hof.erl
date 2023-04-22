-module(hof).

%% Higher Order funcs in erlang

-export([mapper/1]).

double(X) -> 2 * X.

mapper([]) -> [];
mapper([H | T]) -> [double(H) | mapper(T)].
