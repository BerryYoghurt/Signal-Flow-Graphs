function x = transfer_function(p_values, d_values)
    d = d_values(1);
    x = 0;
    for i = 1:length(p_values)
        x = x + p_values(i) * d_values(i+1);
    end
    x = x/d;
    return
end