module Main where

import System.IO

main = do
  hSetBuffering stdin LineBuffering
  let list = askForNumber
  list
  let total = sum list
  putStrLn total
  --putStrLn("The sum is " ++ total)

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
factorial x
  | x == 0    = 1
  | otherwise = x * factorial(x-1)