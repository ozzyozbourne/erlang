-module(mapsexe).

%% Maps example in erlang

-export([getAge/1]).

getAge(Name) ->
    M = #{"Alice" => 23, "Bob" => 21, "Carol" => 85},
    maps:get(Name, M, -1).
