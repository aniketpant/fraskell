{-
Write a program that asks the user for his or her name. If the name is
one of Simon, John or Phil, tell the user that you think Haskell is
a great programming language. If the name is Koen, tell them that
you think debugging Haskell is fun (Koen Classen is one of the people who
works on Haskell debugging); otherwise, tell the user that you don't know who
he or she is.

Write two different versions of this program, one using if statements,
the other using a case statement.
-}

module Main where

import System.IO

main = do
  hSetBuffering stdin LineBuffering
  askForNameCase
  --askForNameIfElseWay

askForNameCase = do
  putStrLn "What's your name?"
  name <- getLine
  case name of
    "Simon" -> putStrLn "I think Haskell is a great programming language."
    "John" -> putStrLn "I think Haskell is a great programming language."
    "Phil" -> putStrLn "I think Haskell is a great programming language."
    "Koen" -> putStrLn "You know what, debugging is Haskell is fun."
    _ -> putStrLn "I don't know who you are."

askForNameIfElseWay = do
  putStrLn "What's your name?"
  name <- getLine
  if name `elem` ["Simon", "John", "Phil"]
    then putStrLn "I think Haskell is a great programming language."
    else if name == "Koen"
      then putStrLn "You know what, debugging is Haskell is fun."
      else putStrLn "I don't know who you are."