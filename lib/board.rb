class Board
  attr_reader :cells

  def initialize(board)
    @cells = {}

    board.each do |row|
      row.each do |column|
        @cells[column] = column
      end
    end
  end

  def draw
    '-------------' \
      "\n| #{@cells[1]} | #{@cells[2]} | #{@cells[3]} |" \
      "\n-------------" \
      "\n| #{@cells[4]} | #{@cells[5]} | #{@cells[6]} |" \
      "\n-------------" \
      "\n| #{@cells[7]} | #{@cells[8]} | #{@cells[9]} |" \
      "\n-------------"
  end

  def update(player, move)
    @cells[move] = player.symbol
  end
end
