s = [1 2 3 4];
t = [2 3 4 1];
weights = [10 20 30 40];
g = digraph(s,t,weights);

f = figure;
p = plot(g,'EdgeLabel',g.Edges.Weight);

while(true)
    [x,y] = ginput(2);
    [~,srcid] = min(hypot(x(1) - p.XData, y(1) - p.YData));
    [~,tarid] = min(hypot(x(2) - p.XData, y(2) - p.YData));
    id = findedge(g,srcid,tarid);
     if(id ~= 0)
         disp('nodes already connected');
     else
         break
     end
end

%input weight
while true
    w = str2double(inputdlg('Enter the weight'));
    if isnan(w)
        disp('weight must be a number');
    else 
        break
    end
end

g = addedge(g,srcid,tarid,w);
p = plot(g,'EdgeLabel',g.Edges.Weight);


    
    

