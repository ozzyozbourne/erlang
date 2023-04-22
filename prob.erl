-module(prob).

%% Challenge in erlang

-export([listPrices/1]).

listPrices(Currency) ->
    CarList = getCarList(),
    printPrice(CarList, Currency).

printPrice([], _) ->
    true;
printPrice([Car | Rest], Currency) ->
    CarMap = getCarMap(),
    Price = maps:get(Car, CarMap),
    ConvertedPrice = convertPrice(Price, Currency),
    io:fwrite("For Car -> ~-20s Price is -> ~-7w ~w~n", [Car, ConvertedPrice, Currency]),
    printPrice(Rest, Currency).

convertPrice(Price, Currency) ->
    case Currency of
        eur -> round(Price * 0.9);
        gbp -> round(Price * 0.72);
        usd -> Price
    end.

getCarList() -> ["BMW i8", "Laborghini Hurcan", "Ferrari f12"].

getCarMap() -> #{"BMW i8" => 150000, "Laborghini Hurcan" => 500000, "Ferrari f12" => 700000}.
