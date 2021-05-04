function d_list = delta(G, I_node, O_node)   %returns a list of deltas. delta(1) is the over all delta.
   %G >> a digraph object
   %I_node >> start node
   %O_node >> end node
   d_list = [calc_delta(G)]; %delta0 / overall delta
   x = forward_paths(graph, I_node, O_node); %list of forward paths from start node to end node
   for p = x    %loops through all paths
       new_G = eleminate_path(G, p); %the graph G without path i
       delta_i = calc_delta(new_G); %calculate delta i after removing path i
       d_list = [d_list delta_i]; %append new delta to d_list
   end
   return
end