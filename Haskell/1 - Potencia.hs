potencia :: Int  -> Int  -> Int
potencia b e = if e == 0 then 1 else product . take e $ repeat b
