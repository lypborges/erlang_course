-module(second).
-import(first,[square/1]).
-export([hypotenuse/2, perimeter/2]).

hypotenuse(SideA,SideB) ->
  A = square(SideA),
  B = square(SideB),
  math:sqrt(A+B).

perimeter(A,B) ->
  C = hypotenuse(A,B),
  (A+B+C)/2.
