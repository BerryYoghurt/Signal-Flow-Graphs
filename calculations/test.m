clear;
clc;
display('this is a test');
% x = [0 5  0 0  0 0;
%      0 0  1 4  0 0; 
%      0 3  0 -3 0 0; 
%      0 0  0 0  7 0; 
%      0 -2 0 1  0 1; 
%      0 0  0 0  0 0;] ;

% x = [0 -1  0 1  0 ;
%      0 0  5 0  0 ; 
%      0 0  0 -3 0 ; 
%      0 0  0 0  1 ; 
%      0 1 0 2  0 ;] ;

% x = [0 1  0 0  ;
%      0 0  1 1  ; 
%      0 1  1 1  ; 
%      0 0  0 0  ;] ;

% x = [0 1 0 0 -1 0 0 0;
%      0 0 -2 0 0 0 0 0;
%      0 2 0 -4 0 0 0 0;
%      0 0 -2 0 0 0 0 1;
%      0 0 0 0 0 -3 0 0;
%      0 0 0 0 2 0 1 0;
%      0 0 0 0 0 1 0 3;
%      0 0 0 0 0 0 0 0;];

x = [0 1 0 0 0 0 0 0;
     0 0 -2 0 0 0 0 0;
     0 2 0 -4 0 0 0 0;
     0 0 0 0 1 0 0 0;
     0 0 0 1 0 0 0 -1;
     0 3 0 0 0 0 -5 0;
     0 0 0 0 0 1 0 0;
     0 0 0 0 0 0 -3 0;];

% names = {'y1', 'y2', 'y3', 'y4', 'y5', 'y6'};
% G = digraph(x,names);
 G = digraph(x);
%  p = plot(G,'EdgeLabel',G.Edges.Weight);
%  p.NodeColor = 'b';
%  p.EdgeColor = 'r';
 %path = shortestpath(G,1,6)
%  G.Edges
%  G.Nodes
 %eleminate path
 %G1 = eleminate_path(G,path);
%  c = graph_to_list(G,6)
%  x = length(c)
%  a = c{2}
%  a(1)
%  a(2)
 figure(1);
 plot(G,'EdgeLabel',G.Edges.Weight);
%  figure(2);
%  plot(G1,'EdgeLabel',G1.Edges.Weight);

list = get_paths(G,1,8,8);
x = forward_path_gain(G, list);
delta = calc_delta(G)
% is_visited = zeros(6,1)
% is_visited(2)






