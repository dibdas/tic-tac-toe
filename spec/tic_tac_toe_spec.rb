require_relative '../lib/board'
require_relative '../lib/player'

describe Player do
  let(:s1) { Player.new('angel', 'O') }
  let(:s2) { Player.new('dip', 'X') }
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

describe Board do
  let(:board) { Board.new([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) }
  describe '#initialize' do
    it 'should have empty board' do
      expect(board.cells).to eql({ 1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9 })
    end
  end
  describe '#draw' do
    it 'should draw the board' do
      expect(board.cells).to eql({ 1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9 })
    end
  end
  describe '#update' do
    it 'should update the board' do
      player = Player.new('peter', 'X')
      board.update(player, 3)
      expect(board.cells[3]).to eql(player.symbol)
    end
  end
end
