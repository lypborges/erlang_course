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

% http://www.wikihow.com/Convert-from-Decimal-to-Binary
% http://learnyousomeerlang.com/recursion
bits(Integer) -> bits(Integer,0).
 
bits(1, Acc) -> Acc + 1;
bits(Integer, Acc) -> 
    Remainder = (Integer rem 2) + Acc,
    Rest = Integer div 2,
    bits(Rest,Remainder).