{-
Use the functions mentioned in this section (you will need two of them) to
compute the number of lower-case letters in a string. For instance, on “aBCde”
it should return 3.
-}

module Main where
import Data.Char

main = do
  let input = "aBCde"
  let output = length(filter isLower input)
  print output