require 'set'
require_relative './board'

class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @turn = true

    @winning_moves = [
      Set.new(@array[0]),
      Set.new(@array[1]),
      Set.new(@array[2]),
      Set.new([@array[0][0], @array[1][0], @array[2][0]]),
      Set.new([@array[0][1], @array[1][1], @array[2][1]]),
      Set.new([@array[0][2], @array[1][2], @array[2][2]]),
      Set.new([@array[0][0], @array[1][1], @array[2][2]]),
      Set.new([@array[0][2], @array[1][1], @array[2][0]])
    ]

    @board = Board.new(@array)
  end

  def start(choice_proc)
    i = 1
    yield @board.draw
    while i <= 9
      choice(&choice_proc)
      system('clear')
      yield @board.draw
      if winning_move?
        yield "#{current_user.name}, won the game!!"
        return
      end

      change_turn(@turn)
      i += 1
    end
    yield draw_move
  end

  def change_turn(turn)
    @turn = !turn
  end

  def choice(&choice_proc)
    move = yield "current user: #{current_user.name} symbol is #{current_user.symbol}\n"\
    'Enter a valid move in between 1 to 9 available from the board above :'

    updating_move(move, &choice_proc)
  end

  def updating_move(move, &choice_proc)
    return choice(&choice_proc) unless valid_move?(move)

    current_user.moves << move
    update_board(move)
  end

  def update_board(move)
    @board.update(current_user, move)
  end

  def current_user
    if @turn
      @player_one
    else
      @player_two
    end
  end

  def valid_move?(move)
    return true if (1..9).cover?(move) &&
                   !@player_one.moves.include?(move) && !@player_two.moves.include?(move)

    false
  end

  def winning_move?
    if current_user.moves.length > 2
      @winning_moves.each do |win|
        return true if win.subset?(current_user.moves.to_set)
      end
    end
    false
  end

  def draw_move
    'uhh! draw move!'
  end
end
