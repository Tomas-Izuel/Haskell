insertOrd :: Ord a => a -> [a] -> [a]
insertOrd a xs = [ y | y <- xs, y < a ] ++ [a] ++ [ z | z <- xs, z >= a]

ordenada :: Ord a => [a] -> [a]
ordenada = foldr insertOrd []