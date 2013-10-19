{-
Write a function that takes a list of pairs of length at least 2 and
returns the first component of the second element in the list. So, when
provided with [(5,’b’),(1,’c’),(6,’a’)], it will return 1.
-}

module Main where

main = do
  let input = [(5,'b'),(1,'c'),(6,'a')]
  let output = fst(input !! 1)  -- input !! 1 returns second tuple in the list
                                -- we all know what fst does
  print output