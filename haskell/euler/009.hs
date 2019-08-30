findFirst f (x:xs)
  | f x       = x
  | otherwise = findFirst f xs
findFirst _ _ = undefined

triplets = [(m^2 - n^2, 2 * m * n, m^2 + n^2) | m <- [1..32], n <- [1..(m - 1)]]

result = prod $ findFirst (\(a, b, c) -> a + b + c == 1000) triplets
  where prod (a, b, c) = a * b * c

main = print result
