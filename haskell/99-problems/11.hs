data ListItem a = Single a | Multiple Int a
  deriving Show

encode :: Eq a => [a] -> [(Int, a)]
encode []     = []
encode (x:xs) =
  let (first, rest) = span (== x) (x:xs)
    in (length first, x) : encode rest

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified = map encode' . encode
  where encode' (1, x) = Single x
        encode' (n, x) = Multiple n x

main :: IO ()
main = do
  print $ encodeModified "xyz"
  print $ encodeModified "haskell"
