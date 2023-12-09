/ https://adventofcode.com/2023/day/9
/ Oasis was better than Blur and here's the code to prove it

i:get each read0`:input.txt;
/ Simple recursion function to generate deltas in successive lists
d:{[x;l] l:l,enlist x; n:1_deltas x; $[all 0=n;l,enlist n;.z.s[n;l]]};
/ p1 
sum sum each{last each d[x;()]}each i;

/ p2 idenitcal to p1 just reverse the inputs
i:reverse each i;
sum sum each{last each d[x;()]}each i;
