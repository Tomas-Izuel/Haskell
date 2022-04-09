-- caso base lista vacia - retornamos una lista con una lista vacia
q1[] = [[]] 
-- caso inductivo donde usamos una lista
-- la cual genera el conjunto de partes de la lista
q1(x:xs) = [x:ys | ys<-sub] ++ sub
    where sub = q1 xs 
