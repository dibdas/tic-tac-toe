

require_relative './board.rb'

class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @array = [[1,2,3],[4,5,6],[7,8,9]]

    board = Board.new(@array)
  end

  def validate_move
  end
  def winning_move
  end
  def draw_move
  end
  def turn
  end

end
