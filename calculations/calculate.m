function show_steps = calculate(G,no_nodes)
clc
if exist('files', 'file') ; delete('files'); end
diary('files')
diary on;
list = get_paths(G,1,no_nodes,no_nodes);
display('forward paths list');
celldisp(list);
x = calc_gains(G, list);
%d = calc_delta(G);
delta_list = delta(G,list)
result = transfer_function(x, delta_list)

diary off;
show_steps =fileread('files');
end