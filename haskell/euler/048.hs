result = sum [x^x | x <- [1..1000]] `mod` 10^10

main = print result