{-
Enumerated set for Color
-}

module Main where

data Color
  = Purple
  | Blue
  | Green
  | Yellow
  | Orange
  | Red
  | White
  | Black
  | Custom Int Int Int -- R G B Component
  deriving Show

main = do
  let colors = [Purple, Blue, Green, Yellow, Orange, Red, White, Black]
  print(map colorToRGB colors)

colorToRGB Purple = (255, 0, 255)
colorToRGB Blue   = (0, 0, 255)
colorToRGB Green  = (0, 255, 0)
colorToRGB Yellow = (255, 255, 0)
colorToRGB Orange = (255, 128, 0)
colorToRGB Red    = (255, 0, 0)
colorToRGB White  = (255, 255, 255)
colorToRGB Black  = (0, 0, 0)