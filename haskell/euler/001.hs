sumMultiples :: Integral a => a -> a
sumMultiples 0 = 0
sumMultiples n | n `mod` 3 == 0 = n + sumMultiples (n - 1)
               | n `mod` 5 == 0 = n + sumMultiples (n - 1)
               | otherwise      = sumMultiples (n - 1)

result :: Integer
result = sumMultiples 999

main :: IO ()
main = print result
