import Data.Array (listArray, (!), range, elems)

lengths = listArray (1, 10^6) . map collatz $ range (1, 10^6)

collatz 0 = undefined
collatz 1 = 1
collatz x | even x = 1 + collatz' (x `div` 2)
          | odd  x = 1 + collatz' (3 * x + 1)
          where collatz' y = if y <= 10^6 then lengths ! y else collatz y

maxIndex = maxIndex' 1 0 0
  where maxIndex' i j v (x:xs)
          | x > v     = maxIndex' (i + 1) i x xs
          | otherwise = maxIndex' (i + 1) j v xs
        maxIndex' _ j _ [] = j

result = maxIndex $ elems lengths

main = print result
