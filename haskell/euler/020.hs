fac n = foldr (*) 1 [1..n]

sumDigits :: Integer -> Integer
sumDigits = foldr (+) 0 . map (read . pure) . show

result = sumDigits $ fac 100

main = print result
