class Node 
    attr_reader :data
    attr_accessor :left, :right

    def initialize data
        @data = data
    end
end

def array_to_tree(array, i)
    return nil if i >= array.length || array[i] == 0

    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)
    node
end

def pre_order node
    return '' if node == nil

    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
end

def post_order node
    return '' if node == nil

    result = post_order(node.left)
    result += post_order(node.right)
    result += "#{node.data} "
end

def order node
    return '' if node == nil

    result = order(node.left)
    result += "#{node.data} "
    result += order(node.right)
end
  
tree = array_to_tree([10, 1, 2, 3, 4, 5, 6], 0)
puts pre_order(tree)
puts order(tree)
puts post_order(tree)

#=> 10 1 3 4 2 5 6

#=> 3 1 4 10 5 2 6

#=> 3 4 1 5 6 2 10
  