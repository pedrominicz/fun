combinations :: Integer -> [a] -> [[a]]
combinations 0 _      = [[]]
combinations 1 xs     = map (:[]) xs
combinations n (x:xs) = map (x:) (combinations (n - 1) xs) ++ combinations n xs
combinations _ []     = []

main :: IO ()
main = do
  print $ combinations 2 "xyz"
  print $ combinations 5 "haskell"
