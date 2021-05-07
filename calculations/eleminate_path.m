function G1 = eleminate_path(G, p)
    %G >> a digraph object
    %p >> vector representing path
    G1 = rmnode(G,p);
    return
end