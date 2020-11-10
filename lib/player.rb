class Player
    attr_reader :name ,:moves, :symbol
  def initialize(name,symbol)
    @name = name
    @symbol = symbol
    @moves =[]
  end
end


