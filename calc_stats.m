% Function calc_stats returns mean, std, min and max of a vector or matrix
% in a set dimention

function stats = calc_stats(inp, dim)

if nargin < 1 
    dim = 1;
end

stats.mean = mean(inp, dim);
stats.std  = std(inp, 0, dim);

stats.min  = min(inp, [], dim);
stats.max  = max(inp, [], dim);

end