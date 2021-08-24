module	bloqueultrasonido	(
					output	[7:0]	d,
					output 		trigger,
					output 		done,
					input		clk,
                                       input		orden,
					input 		echo,
					input 		rst
				);
				

     
 maquinadeestados		maquinadeestados0	(
								.orden	(		orden		),
								.clk	(		clk		),
								.ENABLE	(		ENABLE		),
								.reset	(		reset		)
							);
ultrasonido			ultrasonido0		(
								.clk	(		clk		),
								.ENABLE	(		ENABLE		),
								.reset	(		reset		),
								.ECHO	(		echo		),
								.d	(		d		),
								.trigg	(		trigger		),
								.DONE	(		done		)
							);
endmodule
