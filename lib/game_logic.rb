
require 'set'
require_relative './board.rb'

class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @array = [[1,2,3],[4,5,6],[7,8,9]]
    @turn = true

    @winning_moves = [
      Set.new(@array[0]),
      Set.new(@array[1]),
      Set.new(@array[2]),
      Set.new([@array[0][0], @array[1][0], @array[2][0]]),
      Set.new([@array[0][1], @array[1][1], @array[2][1]]),
      Set.new([@array[0][2], @array[1][2], @array[2][2]]),
      Set.new([@array[0][0], @array[1][1], @array[2][2]]),
      Set.new([@array[0][2], @array[1][1], @array[2][0]]),
    ]

    @board = Board.new(@array)
  end

  def start
    system('clear')
    @board.draw
    puts "current user: #{current_user.name} symbol is #{current_user.symbol}"
    choice

  end

  def change_turn(turn)
    @turn = !turn
  end

  def choice
    puts "Enter a move from the board above:"
    move  = gets.chomp
    validate_move(move)
  end

  def validate_move(move)

    return choice unless valid_move?(move)

    current_user.moves << move.to_i
    change_turn(@turn)
  end

  def current_user
    if @turn
      return @player_one
    else
      return @player_two
    end

  end

  def valid_move?(move)
    return true if (1..9).include?(move.to_i) && move.match(/[1-9]/)
    false
  end

  def winning_move
    puts "this is winning move: #{@winning_moves}"
  end

  def draw_move

  end


end
