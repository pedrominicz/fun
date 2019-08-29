data ListItem a = Single a | Multiple Int a
  deriving Show

encodeDirect' :: Eq a => [a] -> [(Int, a)]
encodeDirect' = foldr encode' []
  where encode' x ((n, y):ys) | x == y = (n + 1, x):ys
        encode' x ys                   = (1, x):ys

encodeDirect :: Eq a => [a] -> [ListItem a]
encodeDirect = map convert' . encodeDirect'
  where convert' (1, x) = Single x
        convert' (n, x) = Multiple n x

main :: IO ()
main = do
  print $ encodeDirect "xyz"
  print $ encodeDirect "haskell"
