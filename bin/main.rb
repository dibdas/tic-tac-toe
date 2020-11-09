#!/usr/bin/env ruby

player_one = nil

loop do
  print 'Choose icon from (x or o) to start playing: (x/o)?: '
  player_one = gets.chomp.downcase

  break if %w[x o].include?(player_one)
end

player_two = player_one == 'x' ? 'o' : 'x'

puts player_two

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

input = gets.chomp
puts input
