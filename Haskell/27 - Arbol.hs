data Arbol a = Nodo a (Arbol a) (Arbol a) | Hoja a deriving (Show)

miarbol = Nodo "1" (Nodo "2" (Hoja "45") (Hoja "78") ) ( Nodo "3" (Hoja "12") (Nodo "4" (Hoja "23") (Hoja "13") ) ) 

miarbol2 = Nodo "1" (Nodo "2" (Hoja "45") (Hoja "78") ) (Nodo "3" (Hoja "12") (Nodo "4" (Nodo "5" (Hoja "30") (Hoja "23") ) (Hoja "13") ) ) 

cantidad :: Arbol a  -> Int
cantidad (Hoja _ ) =  0
cantidad (Nodo _ p q) = 1 + cantidad p + cantidad q

mostrar :: Arbol [Char] -> [Char]
mostrar (Nodo a (Hoja q) (Hoja h)) = "Nodo" ++  a  ++ ": " ++  q  ++ " y " ++  h  ++ ".  "
mostrar (Nodo a (Hoja q) h) = "Nodo" ++  a  ++ ": "++  q ++ ". " ++ mostrar h
mostrar (Nodo a h (Hoja q)) = "Nodo" ++ a ++ ": " ++ q ++ ". " ++ mostrar h
mostrar (Nodo a h q) = "Nodo " ++ a ++ " no tiene ninguno. " ++ mostrar h ++ mostrar q

profundidad :: Arbol [Char]  -> [Char]
profundidad (Nodo a (Hoja _) (Hoja _)) = "Profundidad de Nodo " ++ a ++ ": " ++ a ++ ". "
profundidad (Nodo a  h (Hoja _)) = "Profundidad de Nodo " ++ a ++ ": " ++ a ++ ". "++  profundidad h 
profundidad (Nodo a  (Hoja _) h) = "Profundidad de Nodo " ++ a ++ ": " ++ a ++ ". "++  profundidad h 
profundidad (Nodo a  c h) = "Profundidad de Nodo " ++ a ++ ": " ++ a ++ ". " ++  profundidad c ++  profundidad h