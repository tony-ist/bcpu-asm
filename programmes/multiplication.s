# Multiplies a and b and stores result in memory and AX

BR .start

.result
DATA 0
.a
DATA 3
.b
DATA 23

.start
LDAM .result
LDBM .b
ADD
STAM .result
LDAM .a
LDBC 1
SUB
STAM .a
BRZ .end
BR .start

.end
LDAM .result
HALT
