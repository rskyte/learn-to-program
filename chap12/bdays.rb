filename = 'Birthdays.txt'
bdays = File.read filename
bday_hash = Hash.new

bdays.each_line do |line|
  ls = line.chomp.split(",")
  bday_hash[ls[0]] = ls[1]
end

puts "Enter name to search for birthday:"
name = gets.chomp
nums = bday_hash[name].split("/")
bday_time = Time.local(nums[2],nums[1],nums[0])

puts "#{name}: #{bday_hash[name]} -> will be #{(((Time.now - bday_time)/60/60/24/365) + 1).to_i} years old"
