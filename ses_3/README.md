## 1] synthesis 8 i/p function & find number of slices
![image](https://github.com/user-attachments/assets/28118aad-50dc-4b2c-bd7a-2220b2011350)

![image](https://github.com/user-attachments/assets/4531cd84-c5e9-4e14-86f3-ca82560dd34e)

In above pictures we can see that when we implement a 8 input function we get 2 slices.

## 2] implement negative edge detector and positive edge detector and simulate
I implemented a positive edge detector on an FPGA to detect rising edges of a digital input signal. The design uses a simple synchronous logic approach where the current and previous states of the signal are compared on each clock cycle. When the current signal is high and the previous state is low, a rising edge is detected. This is indicated by a one-clock-cycle pulse on the output signal. The design was coded in Verilog and synthesized for the target FPGA device, ensuring compatibility with real-time hardware operation.

The primary application of a positive edge detector is in event detection, such as button presses, pulse counting, or triggering control logic only on transitions. Unlike a simple level detector, this edge detector responds only when a transition occurs, reducing unnecessary processing.

![image](https://github.com/user-attachments/assets/ced448f5-d8c9-4c59-92b2-6a5fc16efc57)

![image](https://github.com/user-attachments/assets/f71bfc5b-8a2f-47eb-b444-881d8bbecce4)

above is the simulation of positive edge detector

## 3] WRITE THE I/O VERILOG CODE FOR SPI CONTROLLER
module spi_contrller(pclk_i,prst_i,paddr_i,pwrite_i,pwdata_i,prdata_o,penable_i,pready_o,psel_i,sclk,sclk_in,mosi,miso,ssel_o); input pclk_i,prst_i,pwrite_i; input [7:0]paddr_i; input [7:0]pwdata_i; output reg [7:0]prdata_o; input penable_i,psel_i; output reg pready_o; output reg mosi,ssel_o; input sclk_in; output sclk; input miso;

endmodule
