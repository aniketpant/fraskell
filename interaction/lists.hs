{-
Write a program that will repeatedly ask the user for numbers until she
types in zero, at which point it will tell her the sum of all the numbers,
the product of all the numbers, and, for each number, its factorial.
-}

module Main where

import System.IO

main = do
  hSetBuffering stdin LineBuffering
  list <- askForNumber
  putStrLn("The sum is " ++ show(sum list))
  putStrLn("The product is " ++ show(foldl (*) 1 list))
  mapM_ putStrLn [show a ++ " factorial is " ++ show(factorial a) | a <- list]

askForNumber = do
  putStrLn "Give me a number (or 0 to stop):"
  input <- getLine
  let number = read input
  if number == 0
    then return []
    else do
      rest <- askForNumber
      return (number : rest)

factorial :: Int -> Int
factorial 1 = 1
factorial x = x * factorial(x-1)