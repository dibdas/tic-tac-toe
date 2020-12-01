require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game_logic.rb'

describe Player do
      let (:s1) { Player.new('angel','O') }
      let (:s2) { Player.new('dip','X')}
    describe '#initialize' do
        it 'it should return the name of the player' do
            expect(s1.name).to eql('angel')
        end
        it 'should return the symbol' do
            expect(s1.symbol).to eql('O')
        end
        it 'should return the name of the player' do
            expect(s2.name).to eql('dip')
        end
        it 'should return the symbol' do
            expect(s2.symbol).to eql('X')
        end
    end
end

require_relative '../lib/board.rb'

describe Board do
    let(:board)
end



