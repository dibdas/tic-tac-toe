
=begin

class Player
  attr_reader :name ,:symbol, :value
  def initialize(name,symbol)
    @name = name
    @symbol = symbol
  end
end

class Player_Inputs < Player
  @@move={}
  @@count=0
  def add_player
    @@move[name] = name
    @@move[symbol] = symbol
  end

  def win_checks(player_name,value)
    arr=[[1, 2, 3],[4, 5, 6],[7, 8, 9]]
    arr.each do |val|
      value.each do |i|
        @move[player_name] = value,i
        @@count+=1
        if @@count>=4
          combo()
      end
    end
  end
end
def combo()

end
end


=end
