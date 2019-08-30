import Data.Array (listArray, (!), range)

lattice n = table ! (0,0)
  where bounds = ((0,0), (n,n))
        table  = listArray bounds . map lattice' $ range bounds
        lattice' (x,y) | x == n    = 1
                       | y == n    = 1
                       | otherwise = table ! (x+1,y) + table ! (x,y+1)

result = lattice 20

main = print result
