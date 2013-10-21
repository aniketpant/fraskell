{-
Write a datatype Quadruple which holds four elements. However, the
first two elements must be the same type and the last two elements must be
the same type. Write a function firstTwo which returns a list containing the
first two elements and a function lastTwo which returns a list containing the
last two elements. Write type signatures for these functions
-}

module Main where

data Quadruple a b c d = Quadruple a a b b deriving Show

main = do
  let input = Quadruple 0 1 "foo" "bar"
  print(firstTwo input)
  print(lastTwo input)

firstTwo :: (Quadruple a b c d) -> [a]
firstTwo (Quadruple a b c d) = [a, b]

lastTwo :: (Quadruple a b c d) -> [b]
lastTwo (Quadruple a b c d) = [c, d]