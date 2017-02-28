-module(recursion).
-export([fib/1, pieces/1]).

fib(0) -> 0;
fib(1) -> 1;
fib(N) -> fib(N-1) + fib(N-2).

pieces(0) -> 1;
pieces(N) -> N + pieces(N-1).
