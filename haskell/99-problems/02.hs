myButLast :: [a] -> Maybe a
myButLast []      = Nothing
myButLast [_]     = Nothing
myButLast [x, _]  = Just x
myButLast (_:xs)  = myButLast xs

main :: IO ()
main = do
  print $ myButLast "xyz"
  print $ myButLast "haskell"
