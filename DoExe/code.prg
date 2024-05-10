#include "hbclass.ch"

FUNCTION Main()
static EH_PAR, nIdade

   INPUT "Digite sua idade: " TO nIdade

   
   cObj := TFunction() :New( "EH_PAR" )
   
   
   if !cObj:exec(nIdade)
      ? "numero impar"
   else
      ? "numero par"
   endif 
   
   ////

   CLASS TFunction

      DATA cFunction
      DATA idade
      DATA result   
   
      METHOD exec()
      METHOD New()
   
   ENDCLASS

   ////

METHOD exec(idade) CLASS TFunction

   if (idade % 2) == 0
      result := .T.
   else 
      result := .F.
   endif

RETURN result

////

METHOD New( cFunction ) CLASS TFunction

   ::cFunction := cFunction
   
RETURN self
   
   ////

return

/* 
FUNCTION EH_PAR(nIdade)
LOCAL result

   if (nIdade % 2) == 0
      result := .T.
   else 
      result := .F.
   endif

RETURN result
*/