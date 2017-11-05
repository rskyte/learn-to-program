puts "Type some words: "
words = gets.chomp.split(" ")

def sort array
  recursive_sort array, []
end

def recursive_sort u_array, s_array
  y = u_array[0]
  u_array.each_index do |x|
    y = u_array[x] if y > u_array[x]
    u_array.delete_at(u_array.find_index(y)) if x == (u_array.length - 1)
  end
  s_array << y
  if u_array != []
    recursive_sort u_array, s_array
  else
    return s_array
  end
end

puts sort words



