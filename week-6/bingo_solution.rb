# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 4 hours on this challenge.

# Release 0: Pseudocode
# Outline:

# Initialize the class by establishing @bingo_board, taking an argument of a multidimensional array for a board.

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create an array with the letters "B" "I" "N" "G" "0"
  # Define a variable @col_index which randomly selects one of the five letters within the array
  # Create a variable letter that returns the letter value of the index
  # Use a random method (rand) so select a @number between 1 and 100
  # Print out the combination of letter and @number

# Check the board with the method check_board
  # Need to iterate through the array to check both the @col_index and the number
  # IF the index matches col_index AND the number matches the @number called, then the element should be replaced with an "X"
  # ELSE the number should stay the same

# Display a column to the console
  # Print out each row of the @bingo_board array using numerical indexes
  # Space out each row with an additional line

# Display the board to the console (prettily)
  # See above

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo = ["B", "I", "N", "G", "O"]
    @col_index = rand(0..4)
    @letter = @bingo[@col_index]
    @number = rand(1..100)
    "#{@letter}#{@number}"
  end

  def check_board
    @bingo_board.each do |row|
      row.each do |index, num|
        if index == @col_index && num == @number
          num = "X"
        else
          num = @number
        end
      end
    end
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
end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo = ["B", "I", "N", "G", "O"]
    @col_index = rand(0..4)
    letter = @bingo[@col_index]
    @number = rand(1..100)
    "#{letter}#{@number}"
  end

  def check_board
    @bingo_board.map! do |row|
      row.each_with_index do |num, index|
        (num == @number && index == @col_index) if num = "X"
        end
      end
    end
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
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

p new_game = BingoBoard.new(board)

10.times do
  new_game.call
  new_game.check_board
end
new_game.print_board

#Reflection

# On your own, create a commented section in your "bingo_solution.rb" file and write a (or create a video) reflection that answers the following questions:

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# I found the pseudocoding to be pretty difficult in this challenge. I struggled a bit to think through the logic of how to reference the appropriate column in the code, then check the column later in check_board.

# What are the benefits of using a class for this challenge?

# There is a lot of "interaction" between the methods within the class and many instance variables are references across the methods. Therefore, a class is beneficial because it allows for this cross-referencing. Also, it establishes a clear set of related methods.

# How can you access coordinates in a nested array?

# I found the each_with_index method to be pretty helpful. It allowed me to check both the number and the column index.

# What methods did you use to access and modify the array?

# Initially, I just used "each" to access the array. In my refactored version, I used "map!" in order to actually modify the array.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# I learned more about each_with_index. It calls a block with both the item and its index. It serves the purpose of being able to evaluate both an index and its item within a data structure, which proved especially helpful for this challenge.

# How did you determine what should be an instance variable versus a local variable?

# I used instance variables when the variable was reference in a different method. I used a local variable if it was only applicable within the method where it was created.

# What do you feel is most improved in your refactored solution?

# I tried to make the solution more succint. I achieved this by shortening some of the IF statements into one line. To be honest, I struggled quite a bit with the challenge, including the refactoring portion. It took me a while to arrive at an initial solution, so I found it pretty difficult to find an even more effective/efficient one during refactoring.
