def connected_graph?(graph)
    # write your code here
    discovered = Array.new(graph.keys.length, false)
    stack = []
    stack.push(0)
    discovered[0] = true
    discovered = stacking(stack, graph, discovered)
    discovered.none?(false)
end

  def stacking(stack, graph, discovered)
    until stack.empty?
      graph[stack.pop].reverse_each do |adjacent|
        stack.push(adjacent) unless discovered[adjacent]
        discovered[adjacent] = true
      end
    end
    discovered
  end
  
  puts connected_graph?({
    0 => [2], 
    1 => [4], 
    2 => [0, 5, 3], 
    3 => [5, 2], 
    4 => [5, 1], 
    5 => [4, 2, 3]
  })
  # => true
  
  puts connected_graph?({
    0 => [1, 2], 
    1 => [0, 2], 
    2 => [0, 1, 3, 4, 5], 
    3 => [2, 4], 
    4 => [3, 2], 
    5 => [2]
  })
  # => true