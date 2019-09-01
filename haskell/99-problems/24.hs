import System.Random (randomIO)

get :: Int -> [a] -> (a, [a])
get n xs = (xs !! n, take n xs ++ drop (n+1) xs)

randomSelect :: [a] -> Int -> IO [a]
randomSelect [] _ = return []
randomSelect _  0 = return []
randomSelect xs n = do
  (y, ys) <- (\x -> get (x `mod` length xs) xs) <$> randomIO
  zs <- randomSelect ys (n-1)
  return (y:zs)

diffSelect :: Int -> Int -> IO [Int]
diffSelect x y = randomSelect [1..y] x

main :: IO ()
main = do
  diffSelect 2 5   >>= print
  diffSelect 5 100 >>= print

