class CreditCheck

 attr_reader :number

  def initialize(number)
    @number = number
  end

  def reverse
    @number.reverse
  end

  def split
    reverse.split(//)
  end

  def evens
    
  end

  def odds
    ["8", "6", "4", "2"]
  end
end
