def englishNumber number
  if number < 0
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end

  numString = ''
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number
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

def beer (x)
  b = "bottles"
  x.times do
  puts "#{englishNumber(x).capitalize} #{b} of beer standing on a wall,"
  puts "#{englishNumber(x).capitalize} #{b} of beer!"
  puts x != 1 ? "Take one down and pass it around;" : "Take it down and pass it around;"
  x -= 1
  if x == 1
    b = "bottle"
  else
    b = "bottles"
  end
  puts "#{englishNumber(x).capitalize} #{b} of beer standing on the wall!"
  end
end