{-
We’ve seen how to calculate sums and products using folding functions. Given
that the function max returns the maximum of two numbers, write a function
using a fold that will return the maximum value in a list (and zero if the
list is empty). So, when applied to [5,10,2,8,1] it will return 10. Assume
that the values in the list are always ≥ 0. Explain to yourself why it works.
-}

module Main where

main = do
  let input = [5,10,2,8,1]
  let output = foldl max 0 input
  print output

{-
Explanation:
foldl max 0 [5,10,2,8,1]
  ==> foldl max (max 0 5) [10,2,8,1]
  ==> foldl max (max (max 0 5) 10) [2,8,1]
  ==> foldl max (max (max (max 0 5) 10) 2) [8,1]
  ==> foldl max (max (max (max (max 0 5) 10) 2) 8) [1]
  ==> foldl max (max (max (max (max (max 0 5) 10) 2) 8) 1) []
-}