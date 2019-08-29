slice :: [a] -> Integer -> Integer -> [a]
slice xs i j = [x | (x, k) <- zip xs [1..j], k >= i]

main :: IO ()
main = do
  print $ slice "xyz" 2 2
  print $ slice "haskell" 5 6
