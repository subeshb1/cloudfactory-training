def max(*values)
    values.max
   end
def knapsack(weights, max_weight)
    table = Array.new((weights.length) +1){Array.new(max_weight+1,0)}
    for i in 0..weights.length
        for w in 1..max_weight
            if i==0 || w==0
                table[i][w] = 0; 
            elsif weights[i-1] <= w
                table[i][w] = max(weights[i-1] + table[i-1][w-weights[i-1]], table[i-1][w])
            else
                table[i][w] = table[i-1][w]
            end
        end
    end
    table[weights.length][max_weight]
end
