{-
The usual FizzBuzz code
-}

module Main where

main = do
  mapM_ putStrLn $ map fizzbuzz [1..100]

fizzbuzz :: Int -> String
fizzbuzz x
  | x `mod` 15 == 0     = "FizzBuzz"
  | x `mod` 3 == 0      = "Fizz"
  | x `mod` 5 == 0      = "Buzz"
  | otherwise           = show x