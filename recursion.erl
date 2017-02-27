-module(recursion).
-export([fib/1, pieces/1]).

fib(0) ->
  io:format("inside of fib(0) ~n"),
  0;
fib(1) ->
  io:format("inside of fib(1) ~n"),
  1;
fib(N) ->
  io:format("N equal ~p , inside of fib(N) with fib(~p-1) + fib(~p-2)~n",[N,N,N]),
  fib(N-1) + fib(N-2).

pieces(0) ->
  1;
pieces(N) ->
  N + pieces(N-1).
