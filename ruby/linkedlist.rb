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
        current = get_index(index)
        before_current = get_index(index - 1) 
        after_current = current.next_node
        before_current.next_node=after_current
      end
 end

  def get_index(index)
    current = @head
    index.times do
      current=current.next_node
    end
    current
  end


  def get(index)
    current = @head
    index.times do
      current=current.next_node
    end
    return current.value
  end
    
end 
  

list = LinkedList.new


list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)
list.remove(2)

puts list.get(2)
# => 11

 list.get(3)
# => 5