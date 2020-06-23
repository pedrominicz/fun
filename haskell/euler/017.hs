ext :: Int -> Int
ext n
  | n < 21 = letters !! n
  | n < 100 =
    let m = (n `div` 10) * 10
    in letters !! m + letters !! (n - m)
  | n < 1000 =
    let m = n `mod` 100
        p = if m == 0 then 7 else 10
    in letters !! (n `div` 100) + p + ext m
  | otherwise = 11

letters :: [Int]
letters = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8, 6] ++ rest
  where
  rest = [6, 5, 5, 5, 7, 6, 6] >>= (replicate 9 0 ++) . pure

main :: IO ()
main = putStrLn . show . sum $ map ext [1..1000]
