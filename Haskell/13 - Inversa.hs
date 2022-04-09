inversa :: [a] -> [a]
inversa [a] = [a]
inversa (x : xs) = inversa xs ++ [x]