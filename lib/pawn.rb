require './lib/chess_board.rb'

#
## Class ChessBoard => to get next available move from the pawn's current position, display the selection of moves
## get user's select move, move pawn to new coordinates, mark coordinates as visited
#
class Pawn
  attr_accessor :moveset, :x, :y, :possible_moves, :visited_coordinates

  #
  ## Init method
  #
  def initialize(position)
    @x = position[0]
    @y = position[1]
    @possible_moves = []
    @visited_coordinates = []
    @moveset = {
      move_top: [-3, 0],
      move_down: [3, 0],
      move_left: [0, -3],
      move_right: [0, 3],
      move_top_left_diagonal: [-2, -2],
      move_top_right_diagonal: [-2, 2],
      move_down_left_diagonal: [2, -2],
      move_down_right_diagonal: [2, 2]
    }
    find_possible_moves
    update_visited_moves
  end

  #
  ## Method display_selection => Display current position of pawn and next possible moves
  #
  def display_selection
    if possible_moves.any?
      puts "=X=X=X=X=X=X=X=X=X=X=X=X=X=X=X=X=X=X=X=X=X=X="
      puts "Current position of Pawn."
      puts "#{x}, #{y}"
      puts 'Please select from possible moves:'
      possible_moves.each_with_index { |v, k| puts "#{k}) #{v}" }
    else
      puts "No possible moves found; Re-run the code"
      puts "You have visited following coordinates"
      visited_coordinates.each { |v| puts "#{v[0]}, #{v[1]}" }
      exit!
    end
  end

  #
  ## Method get_user_selection => Get user's selected choice for the next move
  #
  def get_user_selection
    puts 'Choice (Press enter for first choice):'
    loop do
      choice = STDIN.gets.strip.to_i
      if !choice.nil? && possible_moves.each_index.to_a.include?(choice)
        return choice
      else
        puts "Please select valid choice."
      end
    end
  end

  #
  ## Method get_new_coordinates => Get new coordinates as per user's selected move
  #
  def get_new_coordinates(choice)
    selected_move = moveset[possible_moves[choice]]
    return x + selected_move[0], y + selected_move[1]
  end

  #
  ## Method update_visited_moves => Mark coordinates as visited
  #
  def update_visited_moves
    visited_coordinates << [x , y]
  end

  #
  ## Method find_possible_moves => Find next possible moves based on pawn's current position
  #
  def find_possible_moves
    @possible_moves = []

    @moveset.each do |move, value|
      x = @x + value[0]
      y = @y + value[1]

      next unless ChessBoard.check_boundaries(x, y) && !visited_coordinates.include?([x, y])

      @possible_moves << move
    end
  end
end
