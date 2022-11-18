/* PaperRound
 * Author: w1758356
 * Creation date: 18/11/2022
 */
MACHINE PaperRound
 
    VARIABLES 
    houseNumbers
    
    INVARIANT 
    houseNumbers <: NAT1 

  INITIALISATION 
       houseNumbers := {}  
       


  OPERATIONS

    addNewHouse( newHouse ) =
      PRE
           newHouse : NAT1  &  newHouse /: houseNumbers
      THEN 
           houseNumbers := houseNumbers \/ { newHouse }
      END
      ;

    numbHouses <-- howManyHouses =
                    BEGIN
                          numbHouses := card( houseNumbers )
                    END
                    ;           
  
    /* Exercise 1.6: add operation:  ans <-- getsPapers( houseNumber ) */

    answer <-- getsPapers( houseNumber ) =
              PRE
                     houseNumber : NAT1 & houseNumber : houseNumbers
              THEN
                     answer := 1    
              END
              ; 

    /* Exercise 1.7: add operation:  cancelPapers( houseNumber ) */

    cancelPapers( houseNumber ) = 
      PRE
           houseNumber : NAT1  &  houseNumber : houseNumbers
      THEN 
           houseNumbers := houseNumbers - { houseNumber }
      END
      
     
       
END /* PaperRound */
   
