  def move(starting, goal)
    # your code here
  
    middle = 6 - starting - goal
    
    "#{starting}->#{middle} #{starting}->#{goal} #{middle}->#{goal}"
    
  end
  
  puts move(1, 3)
  # => 1->2 1->3 2->3
  
  puts move(2, 3)
  # => 2->1 2->3 1->3