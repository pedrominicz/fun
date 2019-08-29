insertAt :: a -> [a] -> Int -> [a]
insertAt x xs n = take (n - 1) xs ++ (x : drop (n - 1) xs)

main :: IO ()
main = do
  print $ insertAt 'y' "xz" 2
  print $ insertAt 'e' "haskll" 5
