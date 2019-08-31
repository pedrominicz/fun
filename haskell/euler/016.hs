result = sum $ map (read . pure :: Char -> Integer) $ show (2^1000)

main = print result
