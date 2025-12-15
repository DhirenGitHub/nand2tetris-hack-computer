load Tessa.hdl,
compare-to Tessa.cmp,
output-file tessa.out,   
output-list A%B1.1.1 B%B1.1.1 C%B1.1.1 D%B1.1.1 F%B1.1.1;

set A 0, set B 0, set C 0, set D 0, eval, output;    
set A 0, set B 0, set C 0, set D 1, eval, output;    
set A 0, set B 0, set C 1, set D 0, eval, output;    
set A 0, set B 0, set C 1, set D 1, eval, output;    
set A 0, set B 1, set C 0, set D 0, eval, output;    
set A 0, set B 1, set C 0, set D 1, eval, output;    
set A 0, set B 1, set C 1, set D 0, eval, output;    
set A 0, set B 1, set C 1, set D 1, eval, output;    
set A 1, set B 0, set C 0, set D 0, eval, output;    
set A 1, set B 0, set C 0, set D 1, eval, output;    
set A 1, set B 0, set C 1, set D 0, eval, output;    
set A 1, set B 0, set C 1, set D 1, eval, output;    
set A 1, set B 1, set C 0, set D 0, eval, output;    
set A 1, set B 1, set C 0, set D 1, eval, output;    
set A 1, set B 1, set C 1, set D 0, eval, output;    
set A 1, set B 1, set C 1, set D 1, eval, output;    