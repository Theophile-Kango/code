class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

class Stack
    def initialize
        @first = nil
    end
    def push(number)
        @first = Node.new(number, @first)
    end
    def pop
        if @first.nil?
            return -1
        else
            current = @first.value
            @first = @first.next_node
            return current
        end
    end
    def min
        stack_min = Stack.new
        stack_max = Stack.new
        head = @first
        
        stack_max.push(head)
        
        return stack_max
      
    end
end

stack = Stack.new
stack.push(1)
stack.push(20)
stack.push(5)
stack.push(3)

p stack.min

p stack.pop

p stack
