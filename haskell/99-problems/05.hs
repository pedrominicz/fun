myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

main :: IO ()
main = do
  print $ myReverse "xyz"
  print $ myReverse "haskell"
