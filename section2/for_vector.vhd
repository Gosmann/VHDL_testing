library ieee ;
use ieee.std_logic_1164.all ;

entity FOR_VECTOR is 
    PORT ( 
        A : in STD_LOGIC_VECTOR ( 0 to 7 ) ;
        CLK : in bit ;
        B : out STD_LOGIC_VECTOR ( 0 to 7 ) 
    ) ;

end FOR_VECTOR ;

architecture BEHAV of FOR_VECTOR is 
        
    begin

    process(CLK)
        
        begin
        
        for i in 0 to 7 loop
            B(i) <= A(i) ;
        end loop ;

    end process ;

end BEHAV ;

