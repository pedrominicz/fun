compress :: Eq a => [a] -> [a]
compress [x, y]
  | x == y    = [x]
  | otherwise = [x, y]
compress (x:y:xs)
  | x == y    = compress (x:xs)
  | otherwise = x : compress (y:xs)
compress x = x

main :: IO ()
main = do
  print $ compress "xyz"
  print $ compress "haskell"
