import Data.Map ( map )

potencia :: Int  -> Int  -> Int
potencia b e = if e == 0 then 1 else product (replicate e b)

-- Debemos importar la funcion map
map (potencia 2) [0,1,2,3,4,5]
--