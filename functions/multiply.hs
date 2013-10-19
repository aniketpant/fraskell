{-
Define a recursive function mult that takes two positive integers a and
b and returns a*b, but only uses addition(i.e., no fair just using
multiplication).
-}

module Main where

main = do
  print(mult 15 8)

mult :: Int -> Int -> Int
mult x y
  | y == 1      = x
  | otherwise   = x + mult x (y-1)