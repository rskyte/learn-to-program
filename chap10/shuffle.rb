puts "Type some words: "
words = gets.chomp.split(" ")

def shuffle array
  recursive_shuffle array, []
end

def recursive_shuffle u_array, s_array
  y = u_array[(rand(u_array.length - 1))]
  u_array.delete_at(u_array.find_index(y))
  s_array << y
  if u_array != []
    recursive_shuffle u_array, s_array
  else
    return s_array
  end
end

puts shuffle words