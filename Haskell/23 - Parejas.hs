parejas :: Num a => [a] -> [a] -> [(a, a)]
parejas a b = [ ( c1, c2 ) |c1 <- a, c2 <- b]