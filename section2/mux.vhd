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
            when 0 => X <= 0 ;
            when 1 => X <= A ;
            when 2 => X <= B ;
            when others => X <= 255 ;
        end case ;

    end process ;

end BEHAV_CASE ;


architecture CONCURRENT_CONDITIONAL of MUX is -- concurent conditional signal assignement

    begin 

    X <=    0 when SEL = 0 else
            A when SEL = 1 else
            B when SEL = 2 else
            255 when SEL = 3 ; 

end CONCURRENT_CONDITIONAL ;

architecture CONCURRENT_SELECTED of MUX is -- selected signal assignement

    begin

    with SEL select
        X <=  0 when 0 ,
              A when 1 ,
              B when 2 ,
              255 when 3 ;
              
    
end CONCURRENT_SELECTED ;      

