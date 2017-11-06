class Die
  def initialize
    roll
  end 
  
  def roll
    @number_showing = 1 + rand(6)
  end
  
  def show
    @number_showing
  end
  
  def cheat (num)
    @number_showing = num if 7 > num && num > 0
  end
end

dice = [Die.new, Die.new]
puts dice[1].show
puts dice[0].show
dice[1].cheat(8)
puts dice[1].show
