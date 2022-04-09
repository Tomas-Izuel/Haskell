data Mov = N Int | S Int | E Int | O Int deriving (Show)
data Paseo a = Pasos Mov (Paseo a)| Descansa a deriving (Show)

-- realizamos
--  Pasos (N 40) (Pasos (S 30) (Pasos (E 10) (Pasos (O 40) (Descansa 0))) ) 