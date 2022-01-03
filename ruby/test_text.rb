class Node 
    attr_accessor :value, :next_node
    def initialize(value, next_node=nil)
        @value = value 
        @next_node = next_node
    end
end

class LinkedList 
    def initialize
        @head = nil
    end

    def add(value)
        node = Node.new(value)
        if(@head.nil?)
            @head = node
            return @head
        end
        current = @head
        while(!current.next_node.nil?)
            current = @head.next_node
        end
        current.next_node = node
        return current.value
    end

    def get(index)
        current = @head 
        index.times do 
            current = current.next_node
        end
        return current
    end
end

lli = LinkedList.new
lli.add(5)
p lli.get(1)