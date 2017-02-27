-module(shapes).
-export([perimeter/1,area/1, bits/1]).

% Sample call, shapes:perimeter({square,{4}}) should return 16.
perimeter({square, {Side}}) ->
    Side * 4;

% Sample call, shapes:perimeter({triangule,{4,3,5}}) should return 12.
perimeter({triangule,{SideA, SideB, SideC}}) ->
    SideA + SideB + SideC.

% Sample call, shapes:area({triangule,{4,8}}) should return 16.0.
area({triangule,{Base, Height}}) ->
    (Base * Height) / 2.

bits(Integer) when is_integer(Integer), Integer >0 ->
    io:format("inside bits");