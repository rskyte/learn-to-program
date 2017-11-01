def roman_numerals(num)
  th = num / 1000
  hu = (num % 1000) / 100
  te = (num % 100) / 10
  on = num % 10
  
  def formatter(n, l1, l2, l3)
    if n < 4
      o = l1 * n
    elsif n == 4
      o = l1 + l2
    elsif n == 5
      o = l2
    elsif n < 9
      o = l2 + (l1 * (n - 5))
    else 
      o = l1 + l3
    end
    return o
  end
  "#{"M" * th}#{formatter(hu, "C", "D", "M")}#{formatter(te, "X", "L", "C")}#{formatter(on, "I", "V", "X")}"
end


    