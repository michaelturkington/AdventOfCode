/ https://adventofcode.com/2023/day/5
/ Starving elves push my hardware to its limits

/ simple parse of input, have started using get instead of "J"$
i:read0`:input.txt;
s:get 6_i 0;
i2:get each'2_'((where i like"") cut i);

/ p1
/ Initially had a mapper function which created every
/ possible mapping, but this was unusable for the actual input.
/ Below method only creates necessary mappings
mapper:{
  n:{raze c where x within/:{(y;y+z)}.'c:y}[;y]each x;
  {$[count x;x[0]+(y-x[1]);y]}'[n;x]
  };

/ Simple recursive function to apply above mapper
{ n:mapper[x;first y] ; $[1=count y;min n;.z.s[n;1_y]] }[s;i2];
