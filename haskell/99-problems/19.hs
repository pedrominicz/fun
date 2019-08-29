rotate :: [a] -> Int -> [a]
rotate xs n
  | n >= 0    = drop n xs ++ take n xs
  | otherwise = reverse $ rotate (reverse xs) (-n)

main :: IO ()
main = do
  print $ rotate "xyz" 2
  print $ rotate "haskell" 5
