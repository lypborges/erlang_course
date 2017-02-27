-module(tail).
-export([fib/3,fib/1]).

fib(0,N,C) ->
    io:format("inside of fib(0,N,C) N == ~p and _C == ~p ~n", [N,C]),
    N;
fib(N,P,C) ->
    io:format("inside of fib(N,P,C) N == ~p and P == ~p and C == ~p ~n", [N,P,C]),
    fib(N-1,C,P+C).

fib(N) ->
    io:format("inside of fib(N) N == ~p ~n", [N]),
    fib(N,0,1).