{-
Write a program that first asks whether the user wants to read from a file,
write to a file or quit. If the user responds quit, the program should exit.
If he responds read, the program should ask him for a file name and print
that file to the screen (if the file doesn't exist, the program may crash).
If he responds write, it should ask him for a file name and then ask him for
text to write to the file, with "." signaling completion. All but the "."
should be written to the file.
-}

module Main where

import System.IO
import Control.Exception

main = do
  hSetBuffering stdin LineBuffering
  doLoop

doLoop = do
  putStrLn "Do you want [read] a file, [write] a file or [quit]?"
  input <- getLine
  case input of
    "read" -> do
      doRead
      doLoop
    "write" -> do
      doWrite
      doLoop
    "quit" -> do
      putStrLn "Goodbye!"
      return ()
    _ -> do
      putStrLn "Incorrect option. Please enter [read], [write] or [quit]."
      doLoop

doRead = do
  putStrLn "Enter a file name to read:"
  filename <- getLine
  bracket
    (openFile filename ReadMode)
    hClose
    (\h -> do contents <- hGetContents h
              putStrLn contents)

doWrite = do
  putStrLn "Enter a file name to write:"
  filename <- getLine
  bracket
    (openFile filename WriteMode)
    hClose
    (\h -> do putStrLn "Enter text (...):"
              writeLoop h)

writeLoop h = do
  line <- getLine
  if line == "."
    then return ()
    else do hPutStrLn h line
            writeLoop h