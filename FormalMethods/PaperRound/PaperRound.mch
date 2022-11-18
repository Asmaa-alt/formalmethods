/* PaperRound
 * Author: w1758356
 * Creation date: 20/10/2022
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
;


/*
firsthouse: outputs the number of the first house in the street that currently has a paper delivered.
lasthouse: outputs the number of the last house that currently has a paper delivered.
haspaper: takes a house number as parameter & outputs a message to indicate if the house has a paper delivered or not.
stopdelivery: takes a house number as parameter & removes it form the set of houses that have paper deliveries.
*/

    firstHouse( houseNumber ) = 
      PRE
           houseNumber : NAT1  &  houseNumber : houseNumbers
      THEN 
           houseNumbers := houseNumbers - { houseNumber }
      END
;

       //    firsthouse :=  NAT1  &  houseNumber < houseNumbers
          

      //     lasthouse :=  NAT1  &  houseNumber > houseNumbers



     
       
END /* PaperRound */
   


