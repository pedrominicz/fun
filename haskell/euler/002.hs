fib :: Num a => [a]
fib = fibGenerator 1 2
  where fibGenerator x y = x : fibGenerator y (x + y)

result :: Integer
result = sum $ filter even $ takeWhile (<= 4000000) fib

main :: IO ()
main = print result
