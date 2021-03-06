function x = calc_gains(G, p)
    %G >> digraph object
    %p >> list of all forward paths/loops
    arr = table2array(G.Edges);
    x = [];
    for i = 1:length(p)
        vec = p{i};
        product = 1;
        for j = 1:length(vec)-1
            for k = 1:size(arr,1) 
                if arr(k,1) == vec(j) && arr(k,2) == vec(j+1)
                    product = product * arr(k,3);
                end
            end
        end
        x = [x product];
    end
    return
end