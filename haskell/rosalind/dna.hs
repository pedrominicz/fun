countSymbols (a:as) xs = (length (filter (== a) xs)) : countSymbols as xs
countSymbols [] _      = []

countDNA = countSymbols "ACGT"

prettyPrint [x]    = show x
prettyPrint (x:xs) = show x ++ " " ++ prettyPrint xs
prettyPrint []     = []

main = do
  input <- getLine
  putStrLn $ prettyPrint $ countDNA input
