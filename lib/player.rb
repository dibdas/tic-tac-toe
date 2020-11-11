class Player
  attr_reader :name, :symbol
  attr_accessor :moves

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @moves = []
  end
end
