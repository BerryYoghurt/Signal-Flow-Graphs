function d = calc_delta(G)   %this function calculates delta for any given graph
   d = 1; %delta
   loops_list = loop(G); %returns a list of all individual loops
   display('listing individual loops: ');
   celldisp(loops_list);
   if isempty(loops_list) %no individual loops
       d = 1;
       return
   end
   %p >> list of gains of individual loops
   p = calc_gains(G, loops_list); 
   for x = p %add values of individual loops to delta
      d = d - x; 
   end
   %----------------------------------------------------------------------------------
   i = 2; %start form groups of 2 non-touching loops
   non_touching_loops = Non_Touching(i,loops_list); %returns a list of i non-touching loops
   if ~isempty(non_touching_loops)
   fprintf('list of %i non-touching loops:\n',i);
   celldisp(non_touching_loops);
   end
   %celldisp(non_touching_loops);
   while length(non_touching_loops) ~= 0 %keep adding values to delta until non_touching loops list is empty
        for comb = non_touching_loops %one possible combination
            %celldisp(comb{1});
            product = 1; %multiply the gains of each group. result in product
            l = calc_gains(G,comb{1}); %calculate gains of all loops to get their product
            for val = l %one path in the combination
                product = product * val; 
            end
            d = d + ((-1)^i) * product; %add product to delta
        end
        %prepare for the next iteration
        i = i + 1;
        non_touching_loops = Non_Touching(i, loops_list); %returns a list of i non-touching loops
        if ~isempty(non_touching_loops)
        fprintf('list of %i non-touching loops:\n',i);
        celldisp(non_touching_loops);
        end
   end
   
   return
end