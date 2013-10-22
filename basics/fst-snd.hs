{-
Use a combination of fst and snd to extract the character out of the tuple
((1,'a'),"foo").
-}

module Main where

main = do
  let input = ((1, 'a'),"foo")
  let output = snd(fst input)
  print output