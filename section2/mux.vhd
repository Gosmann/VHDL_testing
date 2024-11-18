entity MUX is
    
    PORT(
        A : in integer range 0 to 255 ;
        B : in integer range 0 to 255 ;
        SEL : in integer range 0 to 3 ;     -- Selects either A or B or other 
        X : out integer 
    ) ;

end MUX ;

architecture BEHAV_IF of MUX is  -- will implement via a priority mux

    begin

    process( A, B, SEL)
        
        begin

        if SEL = 0 then
            X <= 0 ;
        elsif SEL = 1 then 
            X <= A ;
        elsif SEL = 2 then 
            X <= B ;
        else 
            X <= 255 ;
        end if ;

    end process ; 

end BEHAV_IF ;


architecture BEHAV_CASE of MUX is -- will implement via a flat mux

    begin

    process(A, B, SEL)

        begin

        case SEL is
            when 0 => x <= 0 ;
            when 1 => x <= A ;
            when 2 => x <= B ;
            when others => x <= 255 ;
        end case ;

    end process ;

end architecture ;


        