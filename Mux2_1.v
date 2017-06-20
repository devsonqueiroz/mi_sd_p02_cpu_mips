/**
 * Universidade Estadual de Feira de Santana
 * Departamento de Tecnologia
 * Disciplina: MI-Sistemas Digitais
 * 
 * Mux2_1
 *
 * @author Devson Queiroz
 */




module Mux2_1(
    input A,
    input B,
    input SEL,
    output OUT
);

    wire as, bs, ns;
    
    and n1(bs,B,SEL);
    not nt(ns,SEL);
    and n2(as,ns,A);
    or port_or(OUT,bs,as);
   

endmodule
