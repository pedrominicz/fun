complement = map complement'
  where complement' x | x == 'A' = 'T'
                      | x == 'C' = 'G'
                      | x == 'G' = 'C'
                      | x == 'T' = 'A'

main = do
  input <- getLine
  putStrLn $ reverse $ complement input
