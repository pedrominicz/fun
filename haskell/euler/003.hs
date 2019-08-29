primes :: Integral a => [a]
primes = filterPrime [2..]
  where filterPrime (p:xs) = p : filterPrime [x | x <- xs, x `mod` p /= 0]
        filterPrime _      = undefined

removeFactor :: Integral a => a -> a -> a
removeFactor x y =
  if y `mod` x == 0 then removeFactor x (y `div` x) else y

primeFactors :: Integral a => a -> [a]
primeFactors = primeFactors' primes
  where primeFactors' (p:ps) x | x `mod` p == 0 = p : primeFactors' ps (removeFactor p x)
                               | x > p          = primeFactors' ps x
                               | otherwise      = []
        primeFactors' _ _ = undefined

result :: Integer
result = last $ primeFactors 600851475143

main :: IO ()
main = print result
