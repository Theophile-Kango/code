class Robot
    attr_accessor :name, :color, :nexts
    def initialize(name, color)
      @name = name
      @color = color
      @nexts = nexts
    end
    def action
      return "my name is #{name}"
    end
  end
  
  rob1 = Robot.new("Tome"," Blue")
  rob2 = Robot.new("Jerry","Red")
  
  class Person
    attr_accessor :name, :age, :robot, :nexts, :data
    def initialize(name, age, robot)
      @name = name
      @age = age
      @robot = robot
    end
  
    def me
      return "My name is #{name} and my robbot is #{robot}"
    end
  end
  
  def countNode(head)
      count = 1
      current = head
      while current.nexts != nil do
        current = current.nexts
        count += 1
      end
      return count
  end
  rob1.nexts = rob2
  person1 = Person.new("Theo",24, rob1.name)
  person2 = Person.new("Romuald", 20, rob2.name)
  person3 = Person.new("Christian", 22, rob2.name)
  
  
  p rob1.nexts.action
  p person3.me
  p countNode(person1)