class Node
    attr_accessor :value, :next_node
    def initialize(value, next_node = nil)
	    @value = value
      @next_node = next_node
    end
end

class LinkedList
  
   def initialize
      @head = nil
      @tail = nil
    end
    def add(number)
      
      node = Node.new(number)
      if @head == nil
         @head = node
        return @head
      end
 
      current = @head  
    
      while current.next_node != nil
        current = current.next_node
      end
   
      current.next_node = node
    end

   def add_at(index,item)
    if @head == nil             
        node = Node.new(item)
        @head = node
    end

    if index == 0 
      node = Node.new(item,@head)
      @head = node
    end

    if index > 0
      index -= 1
      current = @head
      before_current = @head
 
      index.times do
          before_current = current.next_node
      end 
      (index + 1).times do
          current = current.next_node
      end 
      
      node = Node.new(item) 
      after_current = before_current.next_node
      before_current.next_node = node
      node.next_node=after_current
    end
  end 

  def remove(index)
      if @head == nil
        return -1
      end
      if index == 0
        current = @head 
        new_current = current.next_node 
        @head = new_current
      end

      if index > 0
        current = get_node(index)
        before_current = get_node(index - 1) 
        after_current = current.next_node
        before_current.next_node=after_current
      end
 end

  def get_node(index)
    current = @head
    index.times do
      current=current.next_node
    end
    current
  end


  def get(index)
    current = @head
    index.times do
      current = current.next_node
    end
    return current.value
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
      return "Stack is empty"
    else
    value = @first.value
    @first = @first.next_node
      return value
    end
  end

end

class Queue
  
  def add(number)
    # your code here
    node = Node.new(number)
      if @head == nil
         @head = node
        return @head
      end
 
      current = @head  
    
      while current.next_node != nil
        current = current.next_node
      end
   
      current.next_node = node
  end
  
  def remove
    # your code here
    if @head == nil
      return -1
    else
      current = @head 
      new_current = current.next_node 
      @head = new_current
      return current.value
    end
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1


stack = Stack.new
stack.push(3)
stack.push(5)

puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3


list = LinkedList.new


list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

 list.get(3)
 
# => 5