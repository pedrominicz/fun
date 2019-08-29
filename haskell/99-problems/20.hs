removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (xs !! (n - 1), take (n - 1) xs ++ drop n xs)

main :: IO ()
main = do
  print $ removeAt 2 "xyz"
  print $ removeAt 5 "haskell"
