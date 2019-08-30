import Data.Numbers.Primes (primes)

findFirst f (x:xs)
  | f x       = x
  | otherwise = findFirst f xs
findFirst _ _ = undefined

triangleNumbers = triangleNumbers' 0 1
  where triangleNumbers' x y = (x + y) : triangleNumbers' (x + y) (y + 1)

removeFactor x y = removeFactor' x y 0
  where removeFactor' x y n | y `mod` x == 0 = removeFactor' x (y `div` x) (n + 1)
                            | otherwise      = (y, n)

divisors x = product $ map (+1) $ divisors' x primes
  where divisors' 1 _      = []
        divisors' x (p:ps) =
          let (y, n) = removeFactor p x
            in n : divisors' y ps

result = findFirst (\x -> divisors x > 500) triangleNumbers

main = print result
