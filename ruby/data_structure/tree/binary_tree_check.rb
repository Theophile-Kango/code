class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize data
		@data = data
	end
end

def array_to_tree(array, index = 0)
    # use your function from the previous challenge
    return nil if index >= array.length || array[index] == 0
    node = Node.new(array[index])
    node.left = array_to_tree(array, 2*index + 1)
    node.right = array_to_tree(array, 2*index + 2)
    node
end

def search_tree?(array)
	root = array_to_tree(array)
  # write your code here
    search_helper(root)
end

def search_helper(node, min=nil, max=nil)
  # an empty node means the current branch is valid
  return true if node.nil?
  # if there's a min constraint and the current node is less than that, then the current branch is invalid
  return false if min && node.data < min
  # if there's a max constraint and the current node is greater than that, then the current branch is invalid
  return false if max && node.data > max

  # the current node has been validated above.
  # the next step is to validate the left and right subtrees of the current node.

  # recursive calls
  # the first one validates the left subtree 
  # the second one validates the right subtree
  search_helper(node.left, min, node.data) && search_helper(node.right, node.data, max)


end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false