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
        @last = nil
        @length = 0
        @min_stack = Min_stack.new
    end
    def push(number)
        node = Node.new(number, @first)
        if(@length == 0)
            @first = node
            @last = node
        else
            current = @first
            @first = node
            @first.next_node = current
        end
        @min_stack.push(number)
        @length += 1
        return @length
    end
    def pop
        if @length == 0
            return -1
        end
            current = @first
        if @length == 1
            @last = nil
        end
        @first = @first.next_node
        @length -= 1
        if current.value == @min_stack.first.value
            @min_stack.pop
        end
        return current
    end
    def min
      if @length == 0 
        return -1
      else
        return @min_stack.first.value
      end

    end
end

class Min_stack
    attr_accessor :first, :last, :length
    def initialize
        @first = nil
        @last = nil
        @length = 0
    end

    def push(number)
        node = Node.new(number, @next_node)
        if length == 0 
            @first = node
            @last = node
            @length += 1
        else
            if number < @first.value
                current = @first
                @first = node
                @first.next_node = node
                @length += 1
            end
        end
        return @length
    end

    def pop
        
        current = @first
        if @length == 1
            @last = nil
        end
        @first = @first.next_node
        @length -= 1
        return current
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

stack.pop

puts stack.min
# => 3

p stack