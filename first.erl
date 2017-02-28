-module(first).
-export([double/1,triple/1,mult/2,area/3,square/1]).

mult(X,Y) -> X*Y.
square(X) -> X*X.
double(X) -> mult(2,X).
triple(X) -> mult(3,X).
area(A,B,C) ->
  S = (A+B+C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C)).
