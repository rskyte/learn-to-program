puts "HELLO DEARIE!"
speech = ""
bye_count = 0
while bye_count < 4
speech = gets.chomp
if speech != speech.upcase
  puts "HUH?! SPEAK UP, SONNY!"
  bye_count = 0
elsif speech == "BYE"
  bye_count += 1
  break if bye_count == 3
else
  puts "NOT SINCE 19#{rand(30) + 30}!"
  bye_count = 0
end
end

puts "BYE!"
