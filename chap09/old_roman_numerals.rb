def old_roman_numerals(num)
    letters = ["I", "X", "C", "M"]
    num.to_s.reverse.split("").zip(letters).map{|n, l| l * n.to_i}.join("").reverse.gsub("IIIII", "V").gsub("XXXXX", "L").gsub("CCCCC", "D")
end



    