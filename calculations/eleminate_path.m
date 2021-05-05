function G1 = eleminate_path(G, p)   %this function calculates delta for any given graph
    %G >> a digraph object
    %p >> vector representing path
    %from = p(1:length(p)-1)
    %to = p(2:length(p))
    %G1 = rmedge(G,from,to); %Q: should i eleminate only edges or eleminate nodes too ?
    G1 = rmnode(G,p);
    return
end