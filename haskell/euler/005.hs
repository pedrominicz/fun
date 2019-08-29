findFirst :: (a -> Bool) -> [a] -> a
findFirst f (x:xs)
  | f x       = x
  | otherwise = findFirst f xs
findFirst _ _ = undefined

result :: Integer
result = findFirst (\x -> sum [x `mod` y | y <- [1..20]] == 0) [1..]

main :: IO ()
main = print result
