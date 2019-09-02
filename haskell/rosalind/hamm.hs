countDiff (x:xs) (y:ys)
  | x /= y    = 1 + countDiff xs ys
  | otherwise = countDiff xs ys
countDiff _ _ = 0

main = do
  first <- getLine
  second <- getLine

  print $ countDiff first second
