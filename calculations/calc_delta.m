function d = calc_delta(G)   %this function calculates delta for any given graph
   loops_list = loops(G); 
   i = 1;
   non_touching_loops = combinations(G, loops_list, i+1); %TODO: combinations function is not implementes yet
   d = 1;
   while length(non_touching_loops) ~= 0
      product = %TODO: what is the format of the list non_touching_loops?
      d = d + ((-1)^i)*product;
   end
   return
end