eliminar :: (Eq a) => a -> [a] -> [a]
eliminar a xs = [ x | x <- xs , x /= a ]