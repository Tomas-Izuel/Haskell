type Entradas = (Bool, Bool)

_and :: Entradas ->Bool
_or :: Entradas ->Bool
_not :: Bool ->Bool

_and (True,True) = True
_and (_,False) = False
_and (False,_) = False

_or (False,False) = False
_or (_,True) = True
_or (True,_) = True

_not True = False
_not False = True

circuito :: Entradas -> Bool
circuito (q1, q2) = _or (_and (_not q1, q2), _and (_not q2,q1))