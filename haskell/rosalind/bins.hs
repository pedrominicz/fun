binarySearch x xs = binarySearch' x xs (length xs) 1
  where binarySearch' _ [] _ _ = -1
        binarySearch' x xs n offset
          | xs !! i == x = i + offset
          | xs !! i > x  = binarySearch' x (take i xs) i offset
          | xs !! i < x  = binarySearch' x (drop (i+1) xs) (n - (i+1)) (offset+i+1)
          where i = n `div` 2

main = do
  _ <- getLine; _ <- getLine

  a <- map (read :: String -> Integer) . words <$> getLine
  i <- map (read :: String -> Integer) . words <$> getLine

  putStrLn $ unwords $ map (\x -> show $ binarySearch x a) i
