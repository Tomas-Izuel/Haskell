insertarEn :: Int -> a -> [a] -> [a]
insertarEn 1 b xs = b : xs
insertarEn n b (x: xs) = x : insertarEn (n - 1) b xs