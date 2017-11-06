class Integer
  def to_eng
    if self < 0
      return "Cannot compute negative number"
    end
    if self == 0
      return "zero"
    end

    numString = ''
    onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
    tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
    teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

    left  = self
    write = left/100
    left  = left - write*100
    and_mod = " hundred and "
    hun = " hundred"

    if write > 9999999
      numString = numString + "#{englishNumber(write/10000000)} billion "
      write = write - (write/10000000*10000000)
    end

    if write > 9999
      numString = numString + "#{englishNumber(write/10000)} million "
      write = write - (write/10000*10000)
    end

    if write > 9
      numString = numString + "#{englishNumber(write/10)} thousand "
      write = write - (write/10*10)
    end

    if write > 0
      hundreds  = englishNumber write
      numString = numString + hundreds + (left > 0 ? and_mod : hun)
    end

    write = left/10
    left  = left - write*10

    if write > 0
      if ((write == 1) and (left > 0))
        numString = numString + teenagers[left-1]
        left = 0
      else
        numString = numString + tensPlace[write-1]
      end

      if left > 0
        numString = numString + '-'
      end
    end

    write = left
    left  = 0

    if write > 0
      numString = numString + onesPlace[write-1]
    end
    numString
  end
  
  def fac
    if self < 0
      return "You can't take the factorial of a negative number"
    end 
  
    if self <= 1
      1
    else
      self * (self - 1).fac
    end
  end
  
  def to_rom
    th = self / 1000
    hu = (self % 1000) / 100
    te = (self % 100) / 10
    on = self % 10
  
    formatter = lambda do |n, l1, l2, l3|
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
    end
  
    "#{"M" * th}#{formatter.call(hu, "C", "D", "M")}#{formatter.call(te, "X", "L", "C")}#{formatter.call(on, "I", "V", "X")}"
  end
end

class Array
  def shuffle
    recursive_shuffle self, []
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
end

puts 7.fac
puts 7.to_rom
puts 7.to_eng
puts [1,3,4,5,8,9].shuffle