collatz 1 = [1]
collatz x | even x = x : collatz (x `div` 2)
          | odd x  = x : collatz (3 * x + 1)

lengths = [length $ collatz x | x <- [1..]]

result = snd $ maximum $ zip (take 1000000 lengths) [1..]

main = print result
