/ https://adventofcode.com/2023/day/2
/ Weird cube games, crux is based on the maximum number of observed values
i:read0`:input.txt;

/ Was pretty happy that this function could be used again in part 2 after developing for part 1
/ Pretty simple, parse out lines with specific colours, and return the max numerical value
testcol:{[x]c:ltrim raze ","vs'";"vs 8_x;{max "J"$(" "vs'y where y like x)[;0]}[;c]each("*red";"*green";"*blue")};

/ p1
/ Just run the testcol function and compare the results against the target values
/ Anything over means there are too many for the game to be played
0N!sum 1+where all each (testcol each i)<=\:(12;13;14);

/ p2
0N!sum prd each testcol each i;
