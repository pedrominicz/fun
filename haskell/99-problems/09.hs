pack :: Eq a => [a] -> [[a]]
pack xs = foldr pack' [] xs
  where pack' x []     = [[x]]
        pack' x (y:ys) =
          if x == head y
            then (x:y):ys
            else ([x]:y:ys)

main :: IO ()
main = do
  print $ pack "xyz"
  print $ pack "haskell"
