class Node
    attr_accessor :value, :next_node
    def initialize value
      @value = value
    end
  end
  
  class Stack
    # insert an element into the stack
    def push(number)
      new_node = Node.new(number)
      if @top.nil?
        @top = new_node
      else
        new_node.next_node = @top
        @top = new_node
      end
    end
    # removes an element from the stack, then returns the removed node
    def pop
      return if @top.nil?
      
      removed_node = @top
      @top = @top.next_node
      removed_node
    end
  
    def empty?
      @top.nil?
    end
    
     def min
      return if @top.nil?
  
      # start at the top element
      current = @top
      min_value = current.value
  
      until current.nil?
        if current.value < min_value
          min_value = current.value
        end
        # iterate through next_node of the current element
        current = current.next_node
      end
      min_value
    end
  
  end
  
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  puts stack.min
  # => 3
  
  stack.pop
  stack.push(7)
  puts stack.min
  # => 3
  
  stack.push(2)
  puts stack.min
  # => 2