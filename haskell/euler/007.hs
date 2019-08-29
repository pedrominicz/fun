primes :: Integral a => [a]
primes = filterPrime [2..]
  where filterPrime (p:xs) = p : filterPrime [x | x <- xs, x `mod` p /= 0]
        filterPrime _      = undefined

result :: Integer
result = primes !! 10000

main :: IO ()
main = print result
