myLast :: [a] -> Maybe a
myLast []     = Nothing
myLast [x]    = Just x
myLast (_:xs) = myLast xs

main :: IO ()
main = do
  print $ myLast "xyz"
  print $ myLast "haskell"
