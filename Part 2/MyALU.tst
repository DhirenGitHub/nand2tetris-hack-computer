load MyALU.hdl,
output-file MyALU.out,
compare-to MyAlu.cmp,
output-list x%B1.16.1 y%B1.16.1 C4%B2.1.2 C3%B2.1.2 C2%B2.1.2 C1%B2.1.2 C0%B2.1.2 out%B1.16.1 zr%B2.1.2 ng%B2.1.2;

set x %B0000000000000000,
set y %B1000000000000001,
set C4 0,
set C3 0,
set C2 0,
set C1 0,
set C0 0,
eval,
output;

set C4 0,
set C3 0,
set C2 0,
set C1 0,
set C0 1,
eval,
output;

set C4 0,
set C3 0,
set C2 0,
set C1 1,
set C0 0,
eval,
output;

set C4 0,
set C3 0,
set C2 0,
set C1 1,
set C0 1,
eval,
output;

set C4 0,
set C3 0,
set C2 1,
set C1 0,
set C0 0,
eval,
output;

set C4 0,
set C3 0,
set C2 1,
set C1 0,
set C0 1,
eval,
output;

set C4 0,
set C3 0,
set C2 1,
set C1 1,
set C0 0,
eval,
output;

set C4 0,
set C3 0,
set C2 1,
set C1 1,
set C0 1,
eval,
output;

set C4 0,
set C3 1,
set C2 0,
set C1 0,
set C0 0,
eval,
output;

set C4 0,
set C3 1,
set C2 0,
set C1 0,
set C0 1,
eval,
output;


set C4 0,
set C3 1,
set C2 0,
set C1 1,
set C0 0,
eval,
output;


set C4 0,
set C3 1,
set C2 0,
set C1 1,
set C0 1,
eval,
output;


set C4 0,
set C3 1,
set C2 1,
set C1 0,
set C0 0,
eval,
output;


set C4 0,
set C3 1,
set C2 1,
set C1 0,
set C0 1,
eval,
output;


set C4 0,
set C3 1,
set C2 1,
set C1 1,
set C0 0,
eval,
output;


set C4 0,
set C3 1,
set C2 1,
set C1 1,
set C0 1,
eval,
output;


set C4 1,
set C3 0,
set C2 0,
set C1 0,
set C0 0,
eval,
output;


set C4 1,
set C3 0,
set C2 0,
set C1 0,
set C0 1,
eval,
output;


set C4 1,
set C3 0,
set C2 0,
set C1 1,
set C0 0,
eval,
output;