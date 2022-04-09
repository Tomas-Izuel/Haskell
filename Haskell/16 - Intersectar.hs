intersec :: (Eq a) => [a] -> [a] -> [a]
intersec [] _ = []
intersec (x : xs) ys = [ y | y <- ys, y == x] ++ intersec [ z | z <- xs, z /= x] ys