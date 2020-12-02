
require_relative '../lib/game_logic.rb'
require_relative '../spec/tic_tac_toe_spec.rb'

describe Game do
    let(:move) {[[1, 2, 3], [4, 5, 6], [7, 8, 9]]}
    describe '#choice' do
        it 'should return from 1 to 9' do
            s1 = Player.new('peter','X')
            expect(s1.move).to eql(1)
        end
    end
end
