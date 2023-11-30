module Displays(input clk,
					 input [26:0] dist,
					 output reg [6:0] display1,
					 output reg [6:0] display2,
					 output reg [6:0] display3);

					 
					 
initial
begin
display1 = 7'b1000000;
display2 = 7'b1000000;
display3 = 7'b1000000;
end


always @(posedge clk)
case (dist)
		 0 : begin display1 = 7'b0000001;//0
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end
		 1 : begin display1 = 7'b1001111;//1
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end
		 2 : begin display1 = 7'b0010010;//2
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end
		 3 : begin display1 = 7'b0000110;//3
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end
		 4 : begin display1 = 7'b1001100;//4
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end
		 5 : begin display1 = 7'b0100100;//5
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end	  
		 6 : begin display1 = 7'b0100000;//6
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end	  			  
		 7 : begin display1 = 7'b0001111;//7
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end	 
		 8 : begin display1 = 7'b0000000;//8
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end	
		 9 : begin display1 = 7'b0000100;//9
		           display2 = 7'b0000001;//0
					  display3 = 7'b0000001;//0
					  end				  
		 10 : begin display1 = 7'b0000001;//0
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end		
		 11 : begin display1 = 7'b1001111;//1
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end		
		 12 : begin display1 = 7'b0010010;//2
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					  end
		 13 : begin display1 = 7'b0000110;//3
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end
		 14 : begin display1 = 7'b1001100;//4
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end
		 15 : begin display1 = 7'b0100100;//5
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end	  
		 16 : begin display1 = 7'b0100000;//6
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end	  			  
		 17 : begin display1 = 7'b0001111;//7
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end	 
		 18 : begin display1 = 7'b0000000;//8
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end	
		 19 : begin display1 = 7'b0000100;//9
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end				 
		 20 : begin display1 = 7'b0000001;//0
		            display2 = 7'b0010010;//2
					   display3 = 7'b0000001;//0
					   end		
		 21 : begin display1 = 7'b1001111;//1
		            display2 = 7'b0010010;//2
					   display3 = 7'b0000001;//0
					   end		
		 22 : begin display1 = 7'b0010010;//2
		            display2 = 7'b0010010;//2
					   display3 = 7'b0000001;//0
					  end
		 23 : begin display1 = 7'b0000110;//3
		            display2 = 7'b0010010;//2
					   display3 = 7'b0000001;//0
					   end
		 24 : begin display1 = 7'b1001100;//4
		            display2 = 7'b0010010;//2
					   display3 = 7'b0000001;//0
					   end
		 25 : begin display1 = 7'b0100100;//5
		            display2 = 7'b1001111;//1
					   display3 = 7'b0000001;//0
					   end	  
		 26 : begin display1 = 7'b0100000;//6
		            display2 = 7'b0010010;//2
					   display3 = 7'b0000001;//0
					   end	  			  
		 27 : begin display1 = 7'b0001111;//7
		            display2 = 7'b0010010;//2
					   display3 = 7'b0000001;//0
					   end	 
		 28 : begin display1 = 7'b0000000;//8
		            display2 = 7'b0010010;//2
					   display3 = 7'b0000001;//0
					   end	
		 29 : begin display1 = 7'b0000100;//9
		            display2 = 7'b0010010;//2
					   display3 = 7'b0000001;//0
					   end				 			
default begin end
endcase

endmodule