# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create an array with the letters "B" "I" "N" "G" "0"
  # Use sample to randomly select one letter out of the array
  # Use a random method (rand) so select a number between 1 and 100

# Check the called column for the number called.
  # Column 1: include all [0] index values, within each of the board arrays
  # Column 2: [1] index values
  # Column 3: [2] index values
  # Column 4: [3] index values
  # Column 5: [4] index values

# If the number is in the column, replace with an 'x'
  # Check if the range of values within the column (defined above) include the number generated in step two

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def print_board
    puts "-------------"
    puts
    print @bingo_board[0]
    puts
    print @bingo_board[1]
    puts
    print @bingo_board[2]
    puts
    print @bingo_board[3]
    puts
    print @bingo_board[4]
    puts
    puts "-------------"
  end

  def call
    @bingo = ["B", "I", "N", "G", "O"]
    @letter = bingo.sample
    @number = rand(1..100)
    return @letter
    return @number
  end

  def column_values
    if @letter == "B"
      @column = @bingo_board[0..4][0]
    elsif @letter == "I"
      @column = @bingo_board[0..4][1]
    elsif @letter == "N"
      @column = @bingo_board[0..4][2]
    elsif @letter == "G"
      @column = @bingo_board[0..4][3]
    elsif @letter == "O"
      @column = @bingo_board[0..4][4]
    end
  end

  def check_column
    if @column.include?(@number)
      @number = "X"
    end
    return @column
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

p new_game = BingoBoard.new(board)


#Reflection
