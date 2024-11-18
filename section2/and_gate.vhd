entity AND_GATE is 

    PORT (
        A : in bit ;
        B : in bit ;
        X : out bit 
    ) ;

end AND_GATE ;


architecture BEHAV_CONCURRENT of AND_GATE is 

    begin

    X <= ( A and B ) ;

end BEHAV_CONCURRENT ;


architecture BEHAV_PROCESS of AND_GATE is 

    begin

    process( B )

        begin

        X <= ( A and B ) ;

    end process ; 


end BEHAV_PROCESS ;