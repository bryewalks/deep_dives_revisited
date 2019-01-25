class MineSweeper
  def initialize
    @counter = 0
    @grid_answer = [["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["B","B","X","X","X","X","X","X"],
            ["X","B","X","X","X","X","X","X"]].reverse

    @grid_unsolved = [["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"],
            ["X","X","X","X","X","X","X","X"]]

    draw


    # store data here as attributes
  end

  def clear_screen!
    system 'clear'
  end

  def update
    # 
  end

  def count_bombs
    @bomb_count = 0
    @grid_answer.each.with_index do |grid_array, grid_i|
      grid_array.each.with_index do |location, i|
        if @grid_answer[grid_i][i] == "B"
          @bomb_count += 1
        end
      end
    end   
  end

  def near_bombs
    if @grid_answer[@x_coordinate + 1][@y_coordinate + 1] != nil && @grid_answer[@x_coordinate + 1][@y_coordinate + 1] == "B"
      @counter += 1
    end

    if @grid_answer[@x_coordinate - 1][@y_coordinate - 1] != nil && @grid_answer[@x_coordinate - 1][@y_coordinate - 1] == "B"
      @counter += 1
    end

    if @grid_answer[@x_coordinate - 1][@y_coordinate + 1] != nil && @grid_answer[@x_coordinate - 1][@y_coordinate + 1] == "B"
      @counter += 1
    end

    if @grid_answer[@x_coordinate + 1][@y_coordinate - 1] != nil && @grid_answer[@x_coordinate + 1][@y_coordinate - 1] == "B"
      @counter += 1
    end

    if @grid_answer[@x_coordinate][@y_coordinate - 1] != nil && @grid_answer[@x_coordinate][@y_coordinate - 1] == "B"
      @counter += 1
    end

    if @grid_answer[@x_coordinate][@y_coordinate + 1] != nil && @grid_answer[@x_coordinate][@y_coordinate + 1] == "B"
      @counter += 1
    end

    if @grid_answer[@x_coordinate - 1][@y_coordinate] != nil && @grid_answer[@x_coordinate - 1][@y_coordinate] == "B"
      @counter += 1
    end

    if @grid_answer[@x_coordinate + 1][@y_coordinate] != nil && @grid_answer[@x_coordinate + 1][@y_coordinate] == "B"
      @counter += 1
    end
    
    if @counter > 0
      @grid_unsolved[@x_coordinate][@y_coordinate] = "#{@counter}"
    else 
      @grid_unsolved[@x_coordinate][@y_coordinate] = " "
    end
    @counter = 0

  end

  def lose
    return true if @grid_answer[@x_coordinate][@y_coordinate] == "B"
  end

  def draw
    clear_screen!
    p @grid_unsolved[7]
    p @grid_unsolved[6]
    p @grid_unsolved[5]
    p @grid_unsolved[4]
    p @grid_unsolved[3]
    p @grid_unsolved[2]
    p @grid_unsolved[1]
    p @grid_unsolved[0]

    # add draw code here
  end

  def run_program

    puts "Press enter to start."
    gets.chomp

    until @bomb_count == 0

      puts "please enter a x coordinate"
      @x_coordinate = gets.chomp.to_i
      puts "please enter a y coordinate"
      @y_coordinate = gets.chomp.to_i

      puts @grid_answer[@x_coordinate][@y_coordinate]
      # puts "Press enter"
      # gets.chomp

      if lose
        puts '        )     )    *        ________'
        puts '  (  ( /(  ( /(  (  `      |   /   /'
        puts ' ( )\ )\()) )\()) )\))(    |  /|  / '
        puts ' )((_|(_)\ ((_)\ ((_)()\   | / | /  '
        puts '((_)_  ((_)  ((_)(_()((_)  |/  |/   '
        puts ' | _ )/ _ \ / _ \|  \/  | (   (     '
        puts ' | _ \ (_) | (_) | |\/| | )\  )\    '
        puts ' |___/\___/ \___/|_|  |_|((_)((_)   '
        puts "You Lose :("
        gets.chomp
        break
      end
      near_bombs

    count_bombs
    # update
    draw
    end
  end
end


# Runner Code
MineSweeper.new.run_program