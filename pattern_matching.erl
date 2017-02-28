-module(pattern_matching).
-export([xOr/2]).

xOr(X,Y) -> X == Y.
xOr1(X,Y) -> not X =/= Y.
