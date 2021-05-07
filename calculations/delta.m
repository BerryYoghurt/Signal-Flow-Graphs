function d_list = delta(G, forward_paths_list)   %returns a list of deltas. delta(1) is the over all delta.
   fig_num = 2;
   i = 1;
   %G >> a digraph object
   %d_list >> list of deltas {overall delta, delta1, delta2 ,...}
   display(' Calculate overall delta:');
   d_list = [calc_delta(G)];%delta0 (overall delta)
    fprintf('overall delta = %f\n',d_list);
   for p = forward_paths_list    %loops through all paths
       new_G = eleminate_path(G, p{1}); %the graph G without path i
       if numnodes(new_G) == 0 || numedges(new_G) == 0
           delta_i = 1;
       else
           fprintf('Calculate delta %i\n',i);
           delta_i = calc_delta(new_G); %calculate delta i after removing path i
           fprintf('delta %i = %f\n',i,delta_i);
           i = i+1;
       end
       %new_G.Nodes
       %new_G.Edges
       d_list = [d_list delta_i]; %append new delta to d_list
       fig_num = fig_num + 1;
   end
   return
end