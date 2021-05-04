function list = forward_paths(graph_list, start_node, end_node, is_visited, one_path, list)
    if start_node == end_node   %base case
        list{length(list)+1} = one_path     %append the found path to the forward paths list
        return
    end
    is_visited(start_node) = 1; %mark node as visited to avoid traversing it twice (avoiding cycles)
    l = length(graph_list{start_node});
    for i = 1:l
        vec = graph_list{start_node}; %currently visited adjecent nodes
        temp = vec(i); %each one of the adjecents (checking all possibilities)
        if is_visited(temp) == 0
            one_path = [one_path temp]; %add temp to the current path
            list = forward_paths(graph_list, temp, end_node, is_visited, one_path, list); %proceed in the current path
            one_path = [one_path(1:length(one_path)-1)]; %remove temp from the current path to try another possible path
        end
    end
    is_visited(start_node) = 0; %unmark the node to try another path
    return
end