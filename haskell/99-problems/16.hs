dropEvery :: [a] -> Integer -> [a]
dropEvery xs n = [x | (x, i) <- zip xs $ cycle [1..n], i /= n]

main :: IO ()
main = do
  print $ dropEvery "xyz" 2
  print $ dropEvery "haskell" 5
