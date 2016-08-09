class Guesser
  def initialize(number, lives)
    @number = number
    @lives = lives
  end
  
  def guess(n)
  raise "Omae wa mo shindeiru" if @lives ==0 
  return true if n == @number	   
      @lives-=1
      return false 
  end
  
end
