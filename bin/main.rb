#!/usr/bin/env ruby



# class TicTacToe
#   attr_reader :board_array
#   attr_accessor :name, :player_input, :history_input, :player_symbol

#   def initialize()
#     @name = nil
#     @player_input = nil
#     @player_symbol = nil
#     @history_input = []
#     @board_array = [
#       ['| 1 |', ' 2 |', ' 3 |'],
#       ['| 4 |', ' 5 |', ' 6 |'],
#       ['| 7 |', ' 8 |', ' 9 |']
#     ]
#   end

#   def play()
#     choice
#     validate_move
#     display
#     winning_move
#     draw_move
#   end

#   def turn
#     puts "#{name} turn is this."
#   end

#   def validate_move
#     if player_input.to_i>=1 && player_input.to_i<=9
#     puts "#{player_input} the move is valid."
#     history_input << player_input
#     else
#     puts "#{player_input} the move is invalid."
#     self.choice
#     end
#   end

#   def winning_move
#     puts "#{name} won the game."
#   end

#   def draw_move
#     puts 'Nobody won the game. The game was draw.'
#   end


#   def display
#     puts '-' * 13
#     board_array.each do |board_values|
#       board_values.each do |value|
#         history_input.each do |input|
#           if  value.include?(input.to_s)
#             value = value.sub(input.to_s, player_symbol.to_s)
#           end

#           print value
#         end
#       end
#       puts ''
#       puts '+---+---+---+'
#     end
#   end

#   def choice
#     puts 'chose any value from the board bretween 1 t0 9'
#     self.player_input = gets.chomp
#   end

# end

require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game_logic'

array = [
        [1,2,3],
        [4,5,6],
        [7,8,9]
      ]

game_on = true

winner = true
def get_name
  puts "enter a valid name"
  name = gets.chomp
  return name unless name.empty?
end
def get_symbol
  puts "enter the symbol (x or o)"
  symbol = gets.chomp
  return symbol
end

player_one = Player.new(get_name,get_symbol)
puts "player one: #{player_one.name}: #{player_one.symbol}"
symbol_for_two = player_one.symbol =='x'? 'o' : 'x'
player_two = Player.new(get_name,symbol_for_two)
puts "player one: #{player_two.name}: #{symbol_for_two}"

while game_on
  game_on = false if winner

  game = Game.new(player_one, player_two)

  b = Board.new(array)

  b.draw

  puts game
end
