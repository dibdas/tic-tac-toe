#!/usr/bin/env ruby

class TicTacToe
  attr_reader :icon
  attr_accessor :player_input

  def initialize(icon)
    @icon = icon
    @player_input = nil
    @board_array = [['| 1 |', ' 2 |', ' 3 |'], ['| 4 |', ' 5 |', ' 6 |'], ['| 7 |', ' 8 |', ' 9 |']]
  end

  def display
    puts '-' * 13
    @board_array.each do |value|
      value.each do |i|
        print i
      end
      puts ''
      puts '+---+---+---+'
    end
  end

  def choice
    puts 'chose any value from the board'
    self.player_input = gets.chomp
  end
end

print 'Choose icon from (x or o) to start playing: (x/o)?: '
playerchoice = gets.chomp

player_one = TicTacToe.new(playerchoice)
puts player_one.icon
player2 = player_one.icon == 'x' ? 'o' : 'x'
puts player2
player_two = TicTacToe.new(player2)
player_one.display
player_one.choice
puts "player one choice #{player_one.player_input}"

player_two.display
player_two.choice
puts "player two choice #{player_two.player_input}"

puts "player one #{player_one}.\nplayer two #{player_two}"
