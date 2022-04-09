import Data.Map

mcd :: Int -> Int -> Int
mcd x y
     | x==0 = y
     | y==0 = x
     | x>y = mcd (x`mod`y) y
     | y>=x = mcd (y`mod`x) x

-- Debemos importar la funcion map
map (mcd 8) [16,5,4,2,32]
--