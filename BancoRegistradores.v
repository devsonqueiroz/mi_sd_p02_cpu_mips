/*---------------------------------------------------*
 * UEFS - Universidade Estadual de Feira de Santana  *
 *                                                   *
 *                                                   *
 * TEC499 - MI - Sistemas Digitais                   *
 *---------------------------------------------------*
 *                                                   *
 *                                                   *
 * Verilog - Banco de Registradores
 * Aluno: Devson Queiroz
 *                                                   *
*                                                    *
 *---------------------------------------------------*/


module bancoRegistrador(read1, read2, writeReg,writeData, regWrite, data1, data2, clk);
input [4:0] read1, read2, writeReg; 
input [31:0] writeData;
input regWrite, clk;
output [31:0] data1, data2;
reg [31:0] rf [31:0];

assign data1 = rf[read1];
assign data2 = rf[read2];

always @(posedge clk) 
	begin
	if (regWrite)
	rf [writeReg] <= writeData;
	end
	endmodule
