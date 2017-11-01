puts "Starting year?"
s_year = gets.chomp.to_i
puts "End year?"
e_year = gets.chomp.to_i

counter = 0
for year in (s_year..e_year)
  if year % 4 == 0
    if year % 100 == 0
      counter += 1 if year % 400
    else
      counter += 1
    end
  end
end

puts "There are #{counter} leap years in that range."


