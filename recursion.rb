def fibonacci(n)
    if(n >= 2)
       return fibonacci(n - 1) + fibonacci(n - 2)
    else
      return 1
    end
    
  end
  
  def factorial(n)
    if(n >= 1)
      return n * factorial(n - 1)
    else
      return 1
    end
  end
  
  #p factorial(4)
  p fibonacci(5)