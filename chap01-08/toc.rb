lwidth = 50
puts "Table of Contents".center(lwidth)
table = ["Chapter 1: Numbers", "Page 1", "Chapter 2: Letters", "Page 72", "Chapter 3: Variables", "Page 118"]
x = 0
y = 1
3.times do
puts table[x].ljust(lwidth/2) + table[y].rjust(lwidth/2)
x += 2
y += 2
end

