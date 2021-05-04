function list = get_paths(G, start_node, end_node, num_node)
    %G >> digraph object
    %start_node >> number representing the input node
    %end_node >> number representing the output node
    % num_node >> number of nodes in G
    list = {}; % list of all possible forward paths
    graph_list = graph_to_list(G,num_node); %adjecency list of the given digraph
    is_visited = zeros(num_node,1); %to mark if a node is visited 
    one_path = [start_node]; %to store each path
    list = forward_paths(graph_list, start_node, end_node, is_visited, one_path, list);
    return
end