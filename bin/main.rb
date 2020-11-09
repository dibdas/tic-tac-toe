#!/usr/bin/env ruby
=begin
player_one = nil


puts ("player_one "+ player_one)
puts ("player_two "+ player_two)

puts 'Choose your move from the board below:'

puts '-' * 13
print '| 1 |'
print ' 2 |'
print ' 3 |'
puts ''
puts '+---+---+---+'

print '| 4 |'
print ' 5 |'
print ' 6 |'
puts ''
puts '+---+---+---+'

print '| 8 |'
print ' 7 |'
print ' 9 |'
puts ''
puts '-' * 13

puts "chose any value from the board"
player1_input = gets.chomp
puts "chose any value from the board"
player2_input = gets.chomp
=end

class TicTacToe
    attr_reader :icon
    def initialize(icon)
        @icon=icon
        @player_input = nil
    end
    
    def display
        puts '-' * 13
        print '| 1 |'
        print ' 2 |'
        print ' 3 |'
        puts ''
        puts '+---+---+---+'

        print '| 4 |'
        print ' 5 |'
        print ' 6 |'
        puts ''
        puts '+---+---+---+'

        print '| 8 |'
        print ' 7 |'
        print ' 9 |'
        puts ''
        puts '-' * 13

    end
    def choice
        puts "chose any value from the board"
        player_input = gets.chomp
    end

end

print 'Choose icon from (x or o) to start playing: (x/o)?: '
playerchoice = gets.chomp


player_one = TicTacToe.new(playerchoice)
puts player_one.icon
player_2 = player_one.icon =='x' ? 'o': 'x'
puts player_2
player_two = TicTacToe.new(player_2)
player_one.display
player_one.choice
player_two.display
player_two.choice
 