function c = loop(g)
%FINDCYCLES Finds all simple cycles in graph G
% C = FINDCYCLES(G) returns a cell array containing all simple cyclesFind

c = {};

for i=1:numnodes(g)
    % Find all cycles starting with node ii, which only contain nodes
    % with indices >= i
    c = findcycleRecursive(i, g, c, i);
end

end


function c = findcycleRecursive(currentPath, g, c, minNodeID)

    successorLast = reshape(successors(g, currentPath(end)), 1, []);

for s = successorLast
    if s < minNodeID
        continue;
    end
    
    if s == currentPath(1)
        % Found a cycle
        c{end+1} = [currentPath s]; %#ok<AGROW>
    elseif any(currentPath == s)
        % Contains a subcycle, this would result in a cycle that is not
        % simple at best.
    else
        % Add node s and continue growing the path.
        c = findcycleRecursive([currentPath s], g, c, minNodeID);
    end
end

end
