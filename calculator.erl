-module(calculator).
-export([sum/1,product/1, maximum/1]).

sum(LIST) ->
    sum(LIST,0).

sum([],ACC) ->
    ACC;

sum([FIRST|REST],ACC) ->
    sum(REST,FIRST+ACC).

product(LIST) ->
    product(LIST,1).

product([],ACC) ->
    ACC;

product([FIRST|REST],ACC) ->
    product(REST,FIRST*ACC).

maximum([FIRST|REST]) ->
    maximum(REST, FIRST).

maximum([],BIGGEST) ->
    BIGGEST;

maximum([NEXT|REST],BIGGEST) when NEXT >= BIGGEST ->
    maximum(REST,NEXT);

maximum([NEXT|REST],BIGGEST) when NEXT < BIGGEST ->
    maximum(REST,BIGGEST).