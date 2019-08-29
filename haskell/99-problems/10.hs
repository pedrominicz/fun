encode :: Eq a => [a] -> [(Int, a)]
encode []     = []
encode (x:xs) =
  let (first, rest) = span (== x) (x:xs)
    in (length first, x) : encode rest

main :: IO ()
main = do
  print $ encode "xyz"
  print $ encode "haskell"
