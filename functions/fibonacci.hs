{-
The fibonacci sequence is defined by:
F(n) = 1 ; n = 1 or n = 2
F(n) = F(n−2) + F(n−1) ; otherwise
Write a recursive function fib that takes a positive integer n as a parameter
and calculates F(n) .
-}

module Main where

main = do
  print(fib 10)

fib :: Int -> Int
fib x
  | x == 1      = 1
  | x == 2      = 1
  | otherwise   = fib(x-2) + fib(x-1)