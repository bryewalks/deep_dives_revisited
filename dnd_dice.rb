class Die

  attr_reader :sides, :face_up

  def initialize(input_die)
    @sides = input_die
    @face_up = 1 
  end

  def roll
   @rolled_die = rand(1..@sides)
   @face_up = @rolled_die
   return @rolled_die
  end

end

class DiceCup

  attr_reader :sides, :face_up

  def initialize(*input_dice)
    @cup = input_dice
    @sides = input_dice
    @face_up = []

  end

  def throw
    rolled_dice = []
    @face_up = rolled_dice
    @cup.each do |i|
      rolled_dice << rand(1..i)
    end
  end

  def roll
    rolled_dice = []
    @cup.each do |i|
      rolled_dice << rand(1..i)
    end
    return rolled_dice  
  end

end


die = Die.new(4)
die_cup = DiceCup.new(4,4,4,4,6,6,6,6,8,8,20)

# Commit 3 - Write Runner Code / Tests

 #die.sides      #shows how many sides of our input die
 #die.face_up    #shows what side is up default of 1 because all of the dice have a 1 position
p die.roll       #rolls the die and shows us what lands facing up
p die.face_up    #shows us what dice is up after rolling
 #die.face_up
 #die.roll

 #die_cup.sides       #shows how many sides each of our input dice has
 #die_cup.face_up     #shows what our dice our facing up empty if done before throw because we cant see into cup
p die_cup.throw       #throws our cup of dice but doesent show them until we look at whats face up
p die_cup.face_up     #shows us what our throw lands as
 #die_cup.roll        #throws and immediatly looks at dice