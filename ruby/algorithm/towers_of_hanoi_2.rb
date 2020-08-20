def hanoi_steps(number_of_discs)
    # your code here
    TOH(number_of_discs, 1, 2, 3)
end

def TOH(n, a, b, c)
    if(n > 0)
        TOH(n-1, a, c, b)
        puts "#{a}~>#{c}"
        TOH(n-1, b, a, c)
    end

end
  
  hanoi_steps(2)
  # => 1->2 
  #    1->3 
  #    2->3
  
  hanoi_steps(3)
  # => 1->3 
  #    1->2
  #    3->2
  #    1->3
  #    2->1
  #    2->3
  #    1->3
  
  hanoi_steps(4)
  # => 1->2
  #    1->3
  #    2->3
  #    1->2
  #    3->1
  #    3->2
  #    1->2
  #    1->3
  #    2->3
  #    2->1
  #    3->1
  #    2->3
  #    1->2
  #    1->3
  #    2->3