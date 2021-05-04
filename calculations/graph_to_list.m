function x = graph_to_list(G, num_node)
    %G >> digraph object
    % num_node >> number of nodes in G
    x = {}; %adjecency list
    for i = 1:num_node
        vec = successors(G,i); %get all destination nodes for node i
        x{i} = vec; %append vec to the adjeceny list
    end
    return
end