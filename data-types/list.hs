{-
Write functions listHead, listTail, listFoldl and listFoldr
which are equivalent to their Prelude twins, but function on our List datatype.
Don't worry about exceptional conditions on the first two.
-}

module Main where

data List a
  = Nil
  | Cons a (List a) deriving Show

main = do
  let input = Cons 1 (Cons 2 Nil)
  print(listHead input)
  print(listTail input)
  print(listFoldl (-) 0 input)
  print(listFoldr (-) 0 input)

listHead (Cons x xs) = x

listTail (Cons x xs) = xs

listFoldl f y Nil = y
listFoldl f y (Cons x xs) = listFoldl f (f y x) xs

listFoldr f y Nil = y
listFoldr f y (Cons x xs) = f x (listFoldr f y xs)