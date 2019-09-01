import System.Random (randomIO)

get :: Int -> [a] -> (a, [a])
get n xs = (xs !! n, take n xs ++ drop (n+1) xs)

randomPermutation :: [a] -> IO [a]
randomPermutation [] = return []
randomPermutation xs = do
  (y, ys) <- (\x -> get (x `mod` length xs) xs) <$> randomIO
  zs <- randomPermutation ys
  return (y:zs)

main :: IO ()
main = do
  randomPermutation "xyz"     >>= print
  randomPermutation "haskell" >>= print

