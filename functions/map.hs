{-
Define a recursive function my map that behaves identically to
the standard function map.
-}

module Main where

main = do
  print(my_map succ [1,5,8])

my_map :: (a -> b) -> [a] -> [b]
my_map f [] = []
my_map f (x:xs) = f x : my_map f xs