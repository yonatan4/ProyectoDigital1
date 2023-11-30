
module proyecto ( input clk, 
					   input Eco, 
						input on,
					   output reg trig,
					   output reg [6:0] display,
					   output reg [7:0] anodos,
						output reg l,
						output reg in1,
						output reg in2,
						output reg in3,
						output reg in4
					  );
													
reg [26:0] cont;
reg [26:0] dist;
initial 
begin
cont = 0;
trig = clk;
dist = 0;
l=0;
cont_t = 0;
cont_clk1 = 0;
cont_anodos = 0;
clk1 = 0;
end


always @(posedge clk)
begin
	cont = cont + 1;
	
	if (cont < 1024)
	
			trig = 1'b1;
	else
		begin
			trig = 1'b0;
				if (Eco == 1)
					begin
						cont_t = cont_t + 1;
						dist = (cont_t*34/100_000);
					end
				else if (Eco == 0)
					begin
						cont_t = 0;
						cont=0;
					end
		end
end



reg [26:0] cont_t;

reg [13:0] cont_clk1;
wire [6:0] display1;
wire [6:0] display2;
wire [6:0] display3;
reg [1:0] cont_anodos;
reg clk1;




always @(posedge clk)
begin
if (cont_clk1<5_000)
	 cont_clk1=cont_clk1+13'b0000000000001;
		else begin
		clk1=~clk1;
		cont_clk1=0;
		end
end

Displays distt(clk,dist,display1,display2,display3);


always @(posedge clk1)
begin 
cont_anodos=cont_anodos+2'b01;
	case (cont_anodos)
		0 : begin anodos=8'b01111111; display=display1; end
		
		1 : begin anodos=8'b10111111; display=display2; end
		
		2 : begin anodos=8'b11011111; display=display3; end
	endcase
end

always @(posedge clk)
	begin
	if (dist < 15)
	l=1;
	else begin
	l=0;
end
end

always @(*)
case(on)

	1: begin if (l==0)begin
		in1=0;
		in2=1;
		in3=0;
		in4=1;
		end 
		else begin
		in1=0;
		in2=0;
		in3=0;
		in4=1;
		end
		end
	0: begin
		in1=0;
		in2=0;
		in3=0;
		in4=0;
		end
	endcase
endmodule     