mps = head . foldr mps' (repeat 0)
  where mps' = (\x z -> [x !! i + max (z !! i) (z !! (i+1)) | i <- [0..length x - 1]])

main = do
  input <- map (map read . words) . lines <$> readFile "067.txt"

  let result = mps input

  print result
