#
## Class ChessBoard => to setup the positions, move pawn, check boundaries
#
class ChessBoard
  attr_accessor :pawn

  #
  ## Init method
  #
  def initialize
    @pawn = Pawn.new([0, 0])
  end

  #
  ## Method move_pawn => To display possible moves, update the pawn's position and mark cell as visited
  #
  def move_pawn
    loop do
      pawn.display_selection
      pawn.x, pawn.y = pawn.get_new_coordinates(pawn.get_user_selection)
      pawn.update_visited_moves
      pawn.find_possible_moves
      pawn.display_selection
    end
  end

  #
  ## Method check_boundaries => To check given coordinates are valid or not
  #
  def self.check_boundaries(x, y)
    within_boundary?(x) && within_boundary?(y)
  end

  #
  ## Method within_boundary? => Validate given position
  # As chess board is of size 10x10; 0-9 is limit of the chess board's x and y axis
  #
  def self.within_boundary?(position)
    (0..9).cover?(position)
  end
end
