rotarIzq :: Int -> [a] -> [a]
rotarIzq 0 xs = xs
rotarIzq 1 (x : xs) = xs ++ [x]
rotarIzq n (x : xs) = rotarIzq (n -1) (xs ++ [x])