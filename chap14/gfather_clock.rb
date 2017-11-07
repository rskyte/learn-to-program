def gfather_clock &block
  Time.new.hour == (0||12) ? hour = 12 : hour = Time.new.hour % 12
  hour.times(&block)
end

gfather_clock {puts "DONG!"}