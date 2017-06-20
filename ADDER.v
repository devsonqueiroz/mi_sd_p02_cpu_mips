/**
 * Universidade Estadual de Feira de Santana
 * Departamento de Tecnologia
 * Disciplina: MI-Sistemas Digitais
 * 
 * Somador
 *
 * @author Devson Queiroz
 */
module ADDER (
	a,
	b,
	c
);

input a;
input b;
output c;

wire [31:0] a;
wire [31:0] b;
wire [31:0] c;

assign c = a + b;

endmodule