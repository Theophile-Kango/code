class Node 
    attr_accessor :value, :next_node
    def initialize value, next_node=nil
        @value = value
        @next_node = next_node
    end
end
class Stack 
    def initialize
        @first = nil
    end

    def push number
        @first = Node.new(number, @first)
    end

    def pop
        if @first.nil?
            return -1
        else
            value = @first.value
            @first = @first.next_node
            return value
        end
    end

end
def balanced_brackets?(string)
    # your code here
    
    stack = Stack.new
    start_char = ['(','[','{']
    special_char = ['(',')','[',']','{','}']

    string = string.chars

    unless string.any?('}') || string.any?(']') || string.any?(')')
        return false
    end
    
    string = string.delete_if{|word| special_char.none?(word)}
    
    string.each do |char|

        if start_char.any?(char)
            stack.push(char) 
        else
            if stack.nil?
                return false
            end
            top = stack.pop
             
            if (top == '[' and char != ']') || 
                (top == '(' and char != ')') || 
                (top == '{' and char != '}') ||
                (top == -1)
                return false
            else
                return true
            end
            
        end
        
    end
end

puts balanced_brackets?("hi())(")
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true