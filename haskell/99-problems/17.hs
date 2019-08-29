split :: [a] -> Int -> ([a], [a])
split (x:xs) n | n > 0 = let (f, s) = split xs (n - 1) in (x:f, s)
split xs _             = ([], xs)

main :: IO ()
main = do
  print $ split "xyz" 2
  print $ split "haskell" 5
