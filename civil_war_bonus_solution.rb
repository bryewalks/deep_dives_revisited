################ Big Bonus Commit 1 - Civil War ################

# Civil War Solution
class Superhero
  attr_reader :name, :has_special_tool, :hitpoints, :alive, :speed, :strength
  attr_writer :hitpoints, :alive


  def initialize(input_options)
    @name = input_options[:name]
    @attack = input_options[:attack]
    @hitpoints = input_options[:hitpoints]
    @speed = input_options[:speed]
    @strength = input_options[:strength]
    @alive = true
    @has_special_tool = false
    @speed = 1
  end

  def hit(input_hero)
    attack = @attack
    if input_hero.speed > self.speed
      rnumber = rand(1..5)
      if rnumber > 3
        attack = 0
      end
    end

    if self.strength == true && input_hero.strength != true
      attack *= 1.5
    end

    input_hero.hitpoints -= attack

    if input_hero.hitpoints < 1
      input_hero.alive = false
    end
  end

  def grab_tool
    @has_special_tool = true
    @attack *= 3
  end

  def armor
    @hitpoints *= 1.25
  end

  def super_speed
    @speed *= 10 
  end

end

# Runner Code / Tests

# vvvvvvvvv don't touch any code below this line vvvvvvvvv

puts "TESTING the Superhero class..."
puts

superman = Superhero.new({name: "Superman", hitpoints: 45, attack: 3, strength: true})
batman = Superhero.new({name: "Batman", hitpoints: 30, attack: 3})

p superman
p batman.super_speed
superman.hit(batman)
p superman
p batman

# puts "Testing Stats..."
# puts

# if superman.name == "Superman"
#   puts "PASS!"
# else
#   puts "F"
# end

# if superman.hitpoints == 45
#   puts "PASS!"
# else
#   puts "F"
# end

# if superman.alive == true
#   puts "PASS!"
# else
#   puts "F"
# end

# if batman.name == "Batman"
#   puts "PASS!"
# else
#   puts "F"
# end

# if batman.hitpoints == 30
#   puts "PASS!"
# else
#   puts "F"
# end

# if batman.alive == true
#   puts "PASS!"
# else
#   puts "F"
# end
# puts

# puts "Stats..."
# puts

# puts "• #{superman.name} has #{superman.hitpoints} hitpoints"
# puts "• #{batman.name} has #{batman.hitpoints} hitpoints"
# puts 

# puts "Superman hits Batman"
# puts "Testing..."

# superman.hit(batman)
# puts "Batman's hitpoints are #{batman.hitpoints}"


# if batman.hitpoints == 27
#   puts "PASS!"
# else
#   puts "F"
# end
# puts


# puts "Batman hits Superman"
# puts "Testing..."

# batman.hit(superman)
# puts "Superman's hitpoints are #{superman.hitpoints}"


# if superman.hitpoints == 42
#   puts "PASS!"
# else
#   puts "F"
# end
# puts

# puts "Checking Stats..."
# puts
# puts "• #{superman.name} has #{superman.hitpoints} hitpoints"
# puts "• #{batman.name} has #{batman.hitpoints} hitpoints"
# puts 


# puts "Batman picks up Kryptonite (tool)"
# puts "Testing..."

# batman.grab_tool

# if batman.has_special_tool == true
#   puts "PASS!"
# else
#   puts "F"
# end
# puts


# 5.times do 
#   puts "Batman hits Superman"
#   batman.hit(superman)
#   puts superman.hitpoints
# end

# puts "Testing..."
# if superman.alive == false
#   puts "PASS!"
# else
#   puts "F"
# end
# puts


# puts "Checking Stats..."
# puts
# if superman.alive
#   puts "• #{superman.name} has #{superman.hitpoints} hitpoints"
# else
#   puts "• Superman is dead."
# end
# puts "• #{batman.name} has #{batman.hitpoints} hitpoints"
# puts 
# # Civil War Runner Code