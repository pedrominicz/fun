transcribe = map transcribe'
  where transcribe' x | x == 'T'  = 'U'
                      | otherwise = x

main = do
  input <- getLine
  putStrLn $ transcribe input
