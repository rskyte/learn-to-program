Dir.chdir 'C:\Users\rskyt_000\Pictures\Hols'

pic_names = Dir['F:**/*.jpg']
puts "Choose a batch name: "
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1 
pic_names.each do |name|  
  print '.'
  new_name = pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_number}#{pic_number}.jpg"
  if File.exist? new_name
    puts "File: #{new_name} already exists!"
    exit
  else
    File.rename name, new_name 
    pic_number += 1
  end
end

puts
puts "Finito"


