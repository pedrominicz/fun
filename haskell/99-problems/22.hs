range :: (Enum a, Ord a) => a -> a -> [a]
range x y
  | x < y     = x : range (succ x) y
  | x > y     = x : range (pred x) y
  | otherwise = [x]

main :: IO ()
main = do
  print $ range 'x' 'z'
  print $ range 'h' 'l'
