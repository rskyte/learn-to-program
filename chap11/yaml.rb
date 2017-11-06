require 'yaml'

test_array = ["Give Quiche A Chance", "Mutants Out!", "Chameleonic Lifeforms, No Thanks!"]
test_string = test_array.to_yaml

filename = "RimmerTshirts.txt"
File.open filename, 'w' do |x|
  x.write test_string
end

read_string = File.read filename
read_array = YAML::load read_string

puts (read_string == test_string)
puts (read_array == test_array)