#!/usr/bin/env ruby

require_relative '../lib/player'
require_relative '../lib/game_logic'

def insert_name
  puts 'Enter a valid name'
  name = gets.chomp
  return name unless name.empty?
end

def insert_symbol
  puts 'Enter the symbol (X or O)'
  symbol = gets.chomp.upcase

  return symbol if %w[X O].include?(symbol)

  insert_symbol
end

player_one = Player.new(insert_name, insert_symbol)
symbol_for_two = player_one.symbol == 'X' ? 'O' : 'X'
player_two = Player.new(insert_name, symbol_for_two)


game = Game.new(player_one, player_two)


game.start do |message|
  puts message
end
