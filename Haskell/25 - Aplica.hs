aplica :: (Int ->Int) -> [Int] -> [Int]
aplica f l = [f c | c<-l]
