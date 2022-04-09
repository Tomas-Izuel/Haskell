sumatoria :: Int -> Int
sumatoria 0 = 0
sumatoria n = if n < 0 then (-1) else sum [1..n]