cantidad :: [a] -> Int
cantidad xs
    |null xs = 0
    |otherwise = sum $ [1 | x <- xs]