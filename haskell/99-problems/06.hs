myCompare :: Eq a => [a] -> [a] -> Bool
myCompare [] [] = True
myCompare (x:xs) (y:ys)
  | x == y      = myCompare xs ys
  | otherwise   = False
myCompare _ _   = False

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs `myCompare` (reverse xs)

main :: IO ()
main = do
  print $ isPalindrome "xyzyx"
  print $ isPalindrome "haskell"
