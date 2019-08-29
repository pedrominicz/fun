elementAt :: [a] -> Int -> Maybe a
elementAt [] _    = Nothing
elementAt (x:_) 1 = Just x
elementAt (_:xs) n
  | n < 1     = Nothing
  | otherwise = elementAt xs (n - 1)

main :: IO ()
main = do
  print $ elementAt "xyz" 2
  print $ elementAt "haskell" 5
