{-
Write a data type declaration for Triple, a type which contains three elements,
all of different types. Write functions tripleFst, tripleSnd and tripleThr
to extract respectively the first, second and third elements.
-}

module Main where

data Triple a b c = Triple a b c deriving Show

main = do
  let input = Triple 10 "this" True
  print(tripleFst input)
  print(tripleSnd input)
  print(tripleThr input)

tripleFst :: (Triple a b c) -> a
tripleFst (Triple a b c) = a

tripleSnd :: (Triple a b c) -> b
tripleSnd (Triple a b c) = b

tripleThr :: (Triple a b c) -> c
tripleThr (Triple a b c) = c