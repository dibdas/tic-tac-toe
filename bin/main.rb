#!/usr/bin/env ruby

require_relative '../lib/player'
require_relative '../lib/game_logic'

def insert_name(player)
  puts "Enter a #{player} name"
  name = gets.chomp
  return name unless name.empty?

  insert_name(player)
end

def insert_symbol
  puts 'Enter the symbol (X or O)'
  symbol = gets.chomp.upcase

  return symbol if %w[X O].include?(symbol)

  insert_symbol
end

player_one = Player.new(insert_name('player1'), insert_symbol)
symbol_for_two = player_one.symbol == 'X' ? 'O' : 'X'
player_two = Player.new(insert_name('player2'), symbol_for_two)

game = Game.new(player_one, player_two)

game.start { |message| puts message }
