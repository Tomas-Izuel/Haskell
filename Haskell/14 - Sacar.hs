sacar :: Int -> [a] -> [a]
sacar 1 (_ : xs) = xs
sacar n (x : xs) = [x] ++ sacar (n - 1) xs