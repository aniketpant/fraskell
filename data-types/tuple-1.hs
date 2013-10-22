{-
Write a datatype Tuple which can hold one, two, three or four elements,
depending on the constructor (that is, there should be four constructors,
one for each number of arguments). Also provide functions tuple1 through
tuple4 which take a tuple and return Just the value in that position,
or Nothing if the number is invalid (i.e., you ask for the tuple4 on a
tuple holding only two elements).
-}

module Main where

data Tuple a b c d
  = One a
  | Two a b
  | Three a b c
  | Four a b c d

main = do
  let input1 = One 1
  let input2 = Two 1 'a'
  let input3 = Three 1 'a' "abc"
  let input4 = Four 1 'a' "abc" True
  print(tuple1 input1)
  print(tuple2 input2)
  print(tuple3 input3)
  print(tuple4 input4)

tuple1 (One   a)        = Just a
tuple1 (Two   a b)      = Just a
tuple1 (Three a b c)    = Just a
tuple1 (Four  a b c d)  = Just a

tuple2 (One   a)        = Nothing
tuple2 (Two   a b)      = Just b
tuple2 (Three a b c)    = Just b
tuple2 (Four  a b c d)  = Just b

tuple3 (One   a)        = Nothing
tuple3 (Two   a b)      = Nothing
tuple3 (Three a b c)    = Just c
tuple3 (Four  a b c d)  = Just c

tuple4 (One   a)        = Nothing
tuple4 (Two   a b)      = Nothing
tuple4 (Three a b c)    = Nothing
tuple4 (Four  a b c d)  = Just d