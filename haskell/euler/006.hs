sumSquares :: Integer
sumSquares = sum [y * y | y <- [1..100]]

squareSum :: Integer
squareSum = let x = sum [1..100] in x * x

result :: Integer
result = squareSum - sumSquares

main :: IO ()
main = print result
