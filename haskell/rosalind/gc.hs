gc xs = gc' xs / fromIntegral (length xs)
  where gc' (x:xs) | x == 'C'  = 1 + gc' xs
                   | x == 'G'  = 1 + gc' xs
                   | otherwise = gc' xs
        gc' [] = 0

parseFASTA :: String -> [(String, String)]
parseFASTA = parseFASTA' . lines
  where parseFASTA' (x:xs)
          | head x /= '>' = error "parseFASTA: expected '>'"
          | otherwise     = (tail x, unlines ys) : parseFASTA' zs
          where (ys, zs) = span ((/= '>') . head) xs
        parseFASTA' [] = []

evalGC (x,y) = ((gc $ concat $ lines y) * 100, x)

main = do
  fasta <- parseFASTA <$> getContents

  let result = maximum $ map evalGC fasta

  putStrLn $ snd result
  putStrLn $ show $ fst result
