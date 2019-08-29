repli :: [a] -> Int -> [a]
repli xs n = concat [replicate n x | x <- xs]

main :: IO ()
main = do
  print $ repli "xys" 2
  print $ repli "haskell" 5
