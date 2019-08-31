fib = 0 : 1 : map fib' [2..]
  where fib' n = fib !! (n-1) + fib !! (n-2)

result = length $ takeWhile (< 10^999) fib

main = print result
