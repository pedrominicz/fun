import Data.Numbers.Primes (primes)

result :: Integer
result = sum $ takeWhile (< 2000000) primes

main :: IO ()
main = print result
