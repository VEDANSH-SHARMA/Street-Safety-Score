clc;
n = 4;
A = magic(n)
ordering = randperm(n)
B = A(ordering, :)
C(ordering, :) = B