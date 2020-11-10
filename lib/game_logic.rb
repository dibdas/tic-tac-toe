
require 'set'
require_relative './board.rb'

class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @array = [[1,2,3],[4,5,6],[7,8,9]]
    @turn = 0

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

  def turn
    @turn=false
  end

  def choice
    puts "Enter a move from the board above:"
    move  = gets.chomp
    validate_move(move)
  end

  def validate_move(move)

    if move.match(/[0-9]/)
      if valid_move?(move)
        @current_user.moves
        puts "its a valid move"
      else
        puts "its not a valid move"
      end
    else
      choice
    end

  end

  def current_user
    if @turn
      return @player_one
    else
      return @player_two
    end
  
  end

  def valid_move?(move)
    return true if (0..9).include?(move.to_i)
    false
  end

  def winning_move
    puts "this is winning move: #{@winning_moves}"
  end

  def draw_move

  end


end
