/ https://adventofcode.com/2023/day/4
/ Elves are degenerate gamblers. Use inter to find winners, then maniuplate accordingly.
i:read0`:input.txt;

/ p1
/ Parse each line, find the intersection of numbers either side of | 
/ Apply formula to get scores
0N!sum {1*2 xexp x-1}each c where 0<c:count each {.[inter;("J"$'" "vs'"|"vs 8_x)except' 0N]}each i;

/ p2
/ Set up worker function to recursively find new sets of winning cards
/ d just sets up the initial winners and their card number
/ Haven't used .z.s in a while, so perfect use case here
/ Runtime was slightly long (>1s), so probably needs optimized
t2:{n:y # x  _ d;(.z.s\)'[n]};
crds:1+til count i;
d:(crds,'count each {.[inter;("J"$'" "vs'"|"vs 8_x)except' 0N]}each i);
t3:(t2\)'[d];
0N!(count i) + count raze/ t3[;1];
