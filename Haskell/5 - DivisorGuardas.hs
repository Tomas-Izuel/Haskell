divisor :: Int  -> Int  -> Bool
divisor d n
    | n - d == 0 = True
    | n - d < 0 = False
    | n - d > 0 = divisor d (n - d)