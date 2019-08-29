myLength :: [a] -> Integer
myLength []     = 0
myLength (_:xs) = 1 + myLength xs

main :: IO ()
main = do
  print $ myLength "xyz"
  print $ myLength "haskell"
