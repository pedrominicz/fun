isPalindrome :: Show a => a -> Bool
isPalindrome x = let s = show x in s == reverse s

result :: Integer
result = maximum $ filter isPalindrome [x * y | x <- [100..999], y <- [100..x]]

main :: IO ()
main = print result
