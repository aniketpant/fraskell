{-
Use map to convert a string into a list of booleans, each element in the
new list representing whether or not the original element was a lower-case
character. That is, it should take the string “aBCde” and return [True,False
False,True,True].
-}

module Main where
import Data.Char

main = do
  let input = "aBCde"
  let output = map isLower input
  print output