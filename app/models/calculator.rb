class Calculator

  def self.sum(*numbers)
    numbers.sum
  end

  def self.subtract(a,b)
    a-b
  end

  def divide(a,b)
    a/b
  end

  def expensive
    sleep 15
    true
  end

end
