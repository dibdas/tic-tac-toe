#!/usr/bin/env ruby



class TicTacToe
  attr_reader :name ,:player_symbol
  attr_accessor :player_input

  def initialize(name,player_symbol)
    @name = name
    @player_input = nil
    @player_symbol = player_symbol
    @history_input = []
    @board_array = [['| 1 |', ' 2 |', ' 3 |'], ['| 4 |', ' 5 |', ' 6 |'], ['| 7 |', ' 8 |', ' 9 |']]
  end

  def turn
    puts "#{name} turn is this."
  end

  def validate_move
    if player_input.to_i>=1 && player_input.to_i<=9
    puts "#{player_input} the move is valid."
    history_input << player_input
    else
    puts "#{player_input} the move is invalid."
    self.choice
    end
  end

  def winning_move
    puts "#{name} won the game."
  end

  def draw_move
    puts 'Nobody won the game. The game was draw.'
  end


  def display
    puts '-' * 13
    @board_array.each do |value|
      value.each do |i|
          if  history_input.include?i
            print player_symbol
          else
            print i
        end
      end
      puts ''
      puts '+---+---+---+'
    end
  end

  def choice
    puts 'chose any value from the board bretween 1 t0 9'
    self.player_input = gets.chomp
  end

end

game_on = true

winner = true
while game_on
  game_on = false if winner

  print 'What is your name?'
  name = gets.chomp
  puts "enter the symbol"
  player1_symbol = gets.chomp

  player2_symbol = player1_symbol == 'x' ? 'o' : 'x'

  player_one = TicTacToe.new(name,player1_symbol)
  player_one.name
  puts "player1 symbol #{player1_symbol}"
  puts "player2 symbol #{player2_symbol}"
  player_one.turn
  player_one.choice
  player_one.validate_move
  player_one.display
  player_one.winning_move
  player_one.draw_move

  print 'What is your name?'
  name = gets.chomp

  player_two = TicTacToe.new(name,player2_symbol)

  player_two.turn
  player_two.choice
  player_two.validate_move
  player_two.display
  player_two.winning_move
  player_two.draw_move
end
