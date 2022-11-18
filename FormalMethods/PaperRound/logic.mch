/* logic
 * Author: w1758356
 * Creation date: 26/10/2022
 */
MACHINE
    logic
    
   
CONSTANTS
     AA, BB ,SQAURES ,PRIMES
     
PROPERTIES
    AA = { 0, 1, 2 } &
    BB = { 0, 2, 4 } &
    SQAURES = {xx|xx: NAT & #yy.(yy: 1..5 & xx = yy*yy)} &
    PRIMES = {xx|xx:NAT & xx <= 1000 & !yy.((xx mod yy = 0 & yy <= xx) => (yy =1 or yy =xx))} 
                 
    
DEFINITIONS 
   isodd(nn) == ( nn : NAT & nn mod 2 = 1 ) ;
   iseven(nn) == ( nn : NAT & nn mod 2 = 0 ) 

            
ASSERTIONS
    !xx.(xx:AA => xx <= 2); 
    !yy.(yy:BB => yy <= 3);
    #xx.(xx:AA & xx <= 2);
    #yy.(yy:BB & yy <= 3);
    
    !nn.(nn:NATURAL =>(nn =0 or nn > 0));
    not(#yy.(yy : NAT & yy <0))
    
    
    

END
