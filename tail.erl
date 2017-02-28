-module(tail).
-export([fib/3,fib/1]).

fib(0,N,C) -> N;
fib(N,P,C) -> fib(N-1,C,P+C).
fib(N) -> fib(N,0,1).