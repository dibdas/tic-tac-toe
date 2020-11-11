
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
     @board.draw
    i=1
    #system('clear')
    while i<=9 
      # @board.draw
     # puts "current user: #{current_user.name} symbol is #{current_user.symbol}"
      unless winning_move
        choice 
      else
        p "current user #{current_user.name} won the game "
        break
      end
      @board.draw
      i+=1
    end
    draw_move
  end

  def change_turn(turn)
    @turn = !turn
  end

  def choice
    puts "current user: #{current_user.name} symbol is #{current_user.symbol}"
    puts "Enter a move from the board above:"
    move = gets.chomp.to_i
    updating_move(move)
  end

  def updating_move(move)
    return choice unless valid_move?(move)
    current_user.moves << move
    print current_user.moves
    update_board(move)
    change_turn(@turn)
  end
   
  def update_board(move)
    @board.update(current_user,move)
  end

  def current_user
    if @turn
      return @player_one
    else
      return @player_two
    end
  end

  def valid_move?(move)
    return true if (1..9).include?(move) &&
     !@player_one.moves.include?(move) && !@player_two.moves.include?(move)
    false
  end

  def winning_move
    if current_user.moves.length >2
      @winning_moves.each do |win|
        return true if win.subset?(current_user.moves.to_set)
      end
    end
  false
  end


  def draw_move
    p "uhh! draw move!"
  end


end
