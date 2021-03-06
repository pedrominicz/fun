data Gene = DD | DR | RR
  deriving Show

dominantProbability :: Fractional a => [Gene] -> a
dominantProbability [RR,RR] = 0
dominantProbability [RR,DR] = 0.5
dominantProbability [DR,RR] = 0.5
dominantProbability [DR,DR] = 0.75
dominantProbability [_,_]   = 1

takeI n dd dr rr
  | n == 1 = takeDD (1,[]) : takeDR (1,[]) : takeRR (1,[]) : []
  | n > 1
    =  map takeDD (takeI (n-1) (dd-1) dr rr)
    ++ map takeDR (takeI (n-1) dd (dr-1) rr)
    ++ map takeRR (takeI (n-1) dd dr (rr-1))
  where takeDD = \(p,l) -> (p * (dd / (dd + dr + rr)), DD:l)
        takeDR = \(p,l) -> (p * (dr / (dd + dr + rr)), DR:l)
        takeRR = \(p,l) -> (p * (rr / (dd + dr + rr)), RR:l)

main = do
  [dd, dr, rr] <- map read . words <$> getLine

  let result = foldr (\(x,y) r -> r + x * dominantProbability y) 0 (takeI 2 dd dr rr)

  print result
