fib k = (map fib' [0..] !!)
  where fib' 0 = 0
        fib' 1 = 1
        fib' n = fib k (n - 1) + k * fib k (n - 2)

main = do
  [n, k] <- map read <$> words <$> getLine
  print $ fib k n
