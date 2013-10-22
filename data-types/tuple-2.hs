{-
Based on our definition of Tuple from the previous exercise, write a function
which takes a Tuple and returns either the value (if it's a one-tuple), a
Haskell-pair (i.e., ('a',5)) if it's a two-tuple, a Haskell-triple if it's
a three-tuple or a Haskell-quadruple if it's a four-tuple.
You will need to use the Either type to represent this.
-}

module Main where

data Tuple a b c d
  = One a
  | Two a b
  | Three a b c
  | Four a b c d deriving Show

main = do
  let input1 = One    1
  let input2 = Two    1 'a'
  let input3 = Three  1 'a' "abc"
  let input4 = Four   1 'a' "abc" True

  --fromTuple input1
  --fromTuple input2
  --fromTuple input3
  --fromTuple input4

fromTuple (One   a)        = Left(Left a)
fromTuple (Two   a b)      = Left(Right(a, b))
fromTuple (Three a b c)    = Right(Left(a, b, c))
fromTuple (Four  a b c d)  = Right(Right(a, b, c, d))