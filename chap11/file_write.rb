filename = "ListerQuote.txt"
sample_string = "I promise that i swear absolutely that " + "I will never mention gazpacho soup again."

File.open filename, 'w' do |f|
    f.write sample_string
end

read_string = File.read filename
puts (read_string == sample_string)
    