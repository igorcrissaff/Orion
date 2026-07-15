parser grammar OrionParser;
options { tokenVocab=OrionLexer; }

program
    : PROGRAM ID start ENDPROGRAM;
    
start
    : START DO comand* END
    ;
    
comand
    : output
    ;
    
output
    : OUTPUT (ID | STRING | INT) SEMI
    ;
    
    
