{-
Write a function elements which returns the elements in a BinaryTree in
a bottom-up, left-to-right manner (i.e., the first element returned in
the left-most leaf, followed by its parent's value, followed by the other
child's value, and so on). The result type should be a normal Haskell list.

Write a fold function for BinaryTrees and rewrite elements
in terms of it (call the new one elements2).
-}

module Main where

data BinaryTree a
  = Leaf a
  | Branch (BinaryTree a) a (BinaryTree a) deriving Show

main = do
  let input = Branch (Leaf 2) 1 (Leaf 3)
  print(elements input)
  print(foldTree (+) 0 input)
  print(elements2 input)

elements (Leaf a) = [a]
elements (Branch left x right) = elements left ++ [x] ++ elements right

foldTree f y (Leaf a) = f a y
foldTree f y (Branch left x right) = foldTree f (f x (foldTree f y right)) left

elements2 = foldTree (:) []
{-
elements2 can also be written as:
elements2 tree = foldTree (\a b -> a:b) [] tree
-}