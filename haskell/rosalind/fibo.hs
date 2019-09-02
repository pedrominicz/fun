fib = (fib' !!)
  where fib' = 0 : 1 : zipWith (+) fib' (tail fib')

main = fib . read <$> getLine >>= print
