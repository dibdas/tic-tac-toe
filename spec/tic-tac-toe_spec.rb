require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game_logic.rb'
require_relative  '../bin/main.rb'

describe Player do
    let (:start) Player.new('angel','O',[])
    describe player do
        it "it should return the name of the player" do
            expect(start.name).to eql('sangel')
        end
        it "it should return the symbol" do
            expect(start.symbol).to eql('O')
        end
        it "should return an array" do
            expect(start.moves).to eql([])
        end

    end
    end

end
end