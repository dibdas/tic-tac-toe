class Board
  def initialize(board)
    @cells = {}

    board.each do |row|
      row.each do |column|
        @cells[column] = 'x'
      end
    end
  end

  def draw
    puts '-'*13
    puts "| #{@cells[1]} | #{@cells[2]} | #{@cells[3]} |"
    puts '-'*13
    puts "| #{@cells[4]} | #{@cells[5]} | #{@cells[6]} |"
    puts '-'*13
    puts "| #{@cells[7]} | #{@cells[8]} | #{@cells[9]} |"
    puts '-'*13
  end
end
