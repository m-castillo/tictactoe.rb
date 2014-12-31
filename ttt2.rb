require "pry"

# draw the board
def grid(space)
  puts
  puts "  #{space[1]} | #{space[2]} | #{space[3]}   "
  puts "-------------"
  puts "  #{space[4]} | #{space[5]} | #{space[6]}   "
  puts "-------------"
  puts "  #{space[7]} | #{space[8]} | #{space[9]}   "
  puts
end

# check there's nothing on the board
def check_board
  board = {}
  (1..9).each {|position| board[position] = " " }
  board
end

# select a space and write X
def player_selection(board)
  puts "Please select a space (1 - 9): "
  selection = gets.chomp.to_i
  board[selection] = "X"
end

player_selection(check_board)
grid(check_board)
