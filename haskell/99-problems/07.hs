data NestedList a = Elem a | List [NestedList a]
  deriving Show

flatten :: NestedList a -> [a]
flatten (Elem x)  = [x]
flatten (List xs) = foldr (\x y -> flatten x ++ y) [] xs

main :: IO ()
main = do
  print $ flatten (List [Elem 'x', Elem 'y', Elem 'z'])
  print $ flatten (List [Elem 'h', Elem 'a', Elem 's', List [Elem 'k', Elem 'e'], List [Elem 'l', Elem 'l']])
