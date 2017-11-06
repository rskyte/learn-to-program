class OrangeTree
  def initialize
    @height = 0
    @oranges = 0
    @year = 0
  end

  def height
    "#{@height.to_i}cm"
  end

  def one_year_passes
    puts "A year passes"
    @year += 1
    if @year < 30                     #young tree stuff
      @height = 300 * Math.log(@year)
      if @year > 10
        @oranges = (@height / 30).to_i
      end
    elsif @year < 35                  #old tree stuff
      puts "The tree is dying"
      @oranges -= 10
    else
      puts "The tree is dead"
      exit
    end
  end

  def orange_count
    "#{@oranges} oranges"
  end

  def pick_orange
    puts @oranges > 0 ? "You pick an orange; it tastes so delicious that you find yourself devouring it in a ravenous trance-like state" : "There are no oranges left."
    @oranges -= 1 unless @oranges == 0
  end
end

tree = OrangeTree.new
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.one_year_passes
puts tree.orange_count
tree.pick_orange
puts tree.orange_count
25.times {tree.pick_orange}
puts tree.orange_count
puts tree.height
20.times {tree.one_year_passes}
tree.pick_orange
puts tree.orange_count
puts tree.height
10.times {tree.one_year_passes}
