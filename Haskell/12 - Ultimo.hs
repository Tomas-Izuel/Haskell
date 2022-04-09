ultimo :: [a] -> a
ultimo xs = xs !! (sum ([1 | _ <- xs]) - 1)