puts "Year of birth?"
y = gets.chomp
puts "Month number?"
m = gets.chomp
puts "Day number?"
d = gets.chomp

puts "SPANK!" * ((Time.now - Time.local(y,m,d))/60/60/24/365)