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

def binary_tree_height(array) 
    tree = array_to_tree(array, 0)
    height_tree(tree)
end

def height_tree(tree) 
    return 0 if tree.nil?
    height = 1
    height += [height_tree(tree.left), height_tree(tree.right)].max
    height
end
  
puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])