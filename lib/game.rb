require './lib/chess_board.rb'
require './lib/pawn.rb'

class Game
  attr_accessor :board

  def initialize
    @board = ChessBoard.new
  end

  def play
    board.move_pawn
  end
end
