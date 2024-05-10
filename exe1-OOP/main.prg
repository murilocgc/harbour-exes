FUNCTION Main()
LOCAL cObj

SET DATE BRITISH
SET CENTURY ON

    cObj:= Pessoa():new()     

    cObj:DefSigno()
    
    cObj:Print()  
   

RETURN nil



