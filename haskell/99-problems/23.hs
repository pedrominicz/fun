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

main :: IO ()
main = do
  randomSelect "xyz" 2     >>= print
  randomSelect "haskell" 5 >>= print
