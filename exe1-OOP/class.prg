#include "hbclass.ch"

CLASS Pessoa

    DATA nome
    DATA sobrenome
    DATA data_nascimento
    DATA signo
    DATA idade
    DATA altura
    DATA peso
    DATA GetList
     

    METHOD New()   
    METHOD Print()
    METHOD DefSigno()   
   
END CLASS

//-----

METHOD New() CLASS Pessoa 
CLS

SET DELIMITERS ON // Exibe os delimitadores 
SET DELIMITERS TO "[]" // Cria delimitadores para os GETs

::nome := SPACE(30)
::sobrenome := SPACE(30)
::data_nascimento := SPACE(10)
::altura := 0
::peso := 0

   @ 1, 2 SAY "Digite seu hotfix: " GET ::nome        
   @ 2, 2 SAY "Digite seu sobrenome: " GET ::sobrenome            
   @ 3, 2 SAY "Digite sua data de nascimento: 'dd-mm-aaaa': " GET ::data_nascimento PICTURE "99/99/9999"     
   @ 4, 2 SAY "Digite sua altura: " GET ::altura PICTURE "9.99"
   @ 5, 2 SAY "Digite seu peso: " GET ::peso PICTURE "99.99"
   READ
     

   ::data_nascimento := cTod(::data_nascimento)  
   ::idade := INT((date() - ::data_nascimento) / 365)
RETURN self

//-----

METHOD DefSigno() CLASS Pessoa

     IF Month(::data_nascimento) == 3 .and. Day(::data_nascimento) >= 21
        ::signo := "Aries"
     ELSEIF Month(::data_nascimento) == 4 .and. Day(::data_nascimento) <= 20
        ::signo := "Aries"
  
     ELSEIF Month(::data_nascimento) == 4 .and. Day(::data_nascimento) >= 21
        ::signo := "Touro"
     ELSEIF Month(::data_nascimento) == 5 .and. Day(::data_nascimento) <= 20
        ::signo := "Touro"
        
     ELSEIF Month(::data_nascimento) == 5 .and. Day(::data_nascimento) >= 21
        ::signo := "Gemeos"
     ELSEIF Month(::data_nascimento) == 6 .and. Day(::data_nascimento) <= 20
        ::signo := "Gemeos"
        
     ELSEIF Month(::data_nascimento) == 6 .and. Day(::data_nascimento) >= 21
        ::signo := "Cancer"
     ELSEIF Month(::data_nascimento) == 7 .and. Day(::data_nascimento) <= 22
        ::signo := "Cancer" 
  
     ELSEIF Month(::data_nascimento) == 7 .and. Day(::data_nascimento) >= 23
        ::signo := "Leao"
     ELSEIF Month(::data_nascimento) == 8 .and. Day(::data_nascimento) <= 22
        ::signo := "Leao" 
  
     ELSEIF Month(::data_nascimento) == 8 .and. Day(::data_nascimento) >= 23
        ::signo := "Virgem"
     ELSEIF Month(::data_nascimento) == 9 .and. Day(::data_nascimento) <= 22
        ::signo := "Virgem" 
  
     ELSEIF Month(::data_nascimento) == 9 .and. Day(::data_nascimento) >= 23
        ::signo := "Libra"
     ELSEIF Month(::data_nascimento) == 10 .and. Day(::data_nascimento) <= 22
        ::signo := "Libra" 
  
     ELSEIF Month(::data_nascimento) == 10 .and. Day(::data_nascimento) >= 23
        ::signo := "Escorpiao"
     ELSEIF Month(::data_nascimento) == 11 .and. Day(::data_nascimento) <= 21
        ::signo := "Escorpiao" 
  
     ELSEIF Month(::data_nascimento) == 11 .and. Day(::data_nascimento) >= 22
        ::signo := "Sagitario"
     ELSEIF Month(::data_nascimento) == 12 .and. Day(::data_nascimento) <= 20
        ::signo := "Sagitario" 
  
     ELSEIF Month(::data_nascimento) == 12 .and. Day(::data_nascimento) >= 22
        ::signo := "Capricornio"
     ELSEIF Month(::data_nascimento) == 1 .and. Day(::data_nascimento) <= 20
        ::signo := "Capricornio" 
  
     ELSEIF Month(::data_nascimento) == 1 .and. Day(::data_nascimento) >= 21
        ::signo := "Aquario"
     ELSEIF Month(::data_nascimento) == 2 .and. Day(::data_nascimento) <= 18
        ::signo := "Aquario" 
  
     ELSEIF Month(::data_nascimento) == 2 .and. Day(::data_nascimento) >= 19
        ::signo := "Peixes"
     ELSEIF Month(::data_nascimento) == 3 .and. Day(::data_nascimento) <= 20
        ::signo := "Peixes"
     ELSE
        ? "você digitou uma data inválida" 
     ENDIF 

RETURN 


METHOD Print() CLASS Pessoa
CLS   
    ? "nome eh: ", ::nome
    ? "sobrenome: ", ::sobrenome
    ? "data de nascimento: ", ::data_nascimento
    ? "signo: ", ::signo
    ? "idade: ", ::idade
    ? "altura", ::altura
    ? "peso", ::peso    

RETURN self
