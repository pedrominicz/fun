sumSquares :: Integer
sumSquares = sum [x^2 | x <- [1..100]]

squareSum :: Integer
squareSum = let x = sum [1..100] in x^2

result :: Integer
result = squareSum - sumSquares

main :: IO ()
main = print result
