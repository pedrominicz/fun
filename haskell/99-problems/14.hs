dupli :: [a] -> [a]
dupli = concatMap $ replicate 2

main :: IO ()
main = do
  print $ dupli "xyz"
  print $ dupli "haskell"
