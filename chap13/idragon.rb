class Dragon
   def initialize
     @name = gets.chomp
     @asleep = false
     @stuff_in_belly = 10
     @stuff_in_intestines = 0
     puts "#{@name} is born!"
   end

   def name
     @name
   end

   def feed
     puts "You feed #{@name}"
     @stuff_in_belly = 10
     passage_of_time
   end

   def walk
     puts "You walk #{@name}"
     @stuff_in_intestines = 0
     passage_of_time
   end

   def put_to_bed
     puts "You put #{@name} to bed"
     @asleep = true
     3.times do
       if @asleep
         passage_of_time
       end
       if @asleep
         puts "#{@name} snores, filling the room with smoke"
       end
     end
     if @asleep
       @asleep = false
       puts "#{@name} wakes up slowly"
     end
   end

   def toss
     puts "You toss #{@name} up in the air,"
     puts "It laughs; which singes your eyebrows."
     passage_of_time
   end

   def rock
     puts "You rock #{@name} gently"
     @asleep = true
     puts "It briefly doses off..."
     passage_of_time
     if @asleep
       @asleep = false
       puts "...but wakes up when you stop"
     end
   end

   private
   def hungry?
     @stuff_in_belly <= 2
   end

   def poopy?
     @stuff_in_intestines >= 8
   end

   def passage_of_time
     if @stuff_in_belly > 0
       @stuff_in_belly -= 1
       @stuff_in_intestines += 1
     else
       if @asleep
         @asleep = false
         puts "It wakes up suddenly!"
       end
       puts "#{@name} is starving! In desperation it eats you!"
       exit
     end

     if @stuff_in_intestines >= 10
       puts "Oops! #{@name} had an accident!"
       @stuff_in_intestines = 0
     end

     if hungry?
       if @asleep
         @asleep = false
         puts "It wakes up suddenly!"
       end
       puts "#{@name}'s stomach grumbles..."
     end

     if poopy?
       if @asleep
         @asleep = false
         puts "It wakes up suddenly!"
       end
       puts "#{@name} does the potty dance"
     end
   end
end

def play
  puts "Welcome to the virtual pet dragon program!"
  puts "To start give your dragon a name: "
  pet = Dragon.new
  puts "You can do loads of cool things with your new dragon;
Commands: sleep, rock, toss, feed, walk
When you have finished playing with your dragon type 'bye' to exit."

  output = ''
  while output != 'bye'
    output = gets.chomp
    if output == 'sleep'
      pet.put_to_bed
    elsif output == 'rock'
      pet.rock
    elsif output == 'toss'
      pet.toss
    elsif output == 'feed'
      pet.feed
    elsif output == 'walk'
      pet.walk
    elsif output == 'bye'
      puts "Leave #{pet.name} all alone??? (y/n)"
      if gets.chomp == 'y'
        puts "Bye!"
        exit
      else
        puts "Yay #{pet.name} still wants to play!"
        output = ''
      end
    else
      puts "Please type a valid command (sleep, rock, toss, feed, walk or bye)"
    end
  end
end

play
     