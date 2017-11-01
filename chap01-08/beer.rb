def beer (x)
b = "bottles"
99.times do
puts "#{x} #{b} of beer standing on a wall,"
puts "#{x} #{b} of beer!"
puts "Take one down drink and frown;"
x -= 1
if x == 1
  b = "bottle"
else
  b = "bottles"
end
puts "#{x} #{b} of beer standing on the wall!"
end
end

beer(99)