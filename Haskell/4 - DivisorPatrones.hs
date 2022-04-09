divPatron :: Int  -> Int  -> Bool
divPatron 0 _ = False
divPatron _ 0 = True
divPatron d n = ((n - d) >= 0) && divPatron d (n - d)