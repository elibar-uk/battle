require 'player'


describe Player do
  subject(:player_1) {Player.new('maggie')}
  subject(:player_2) {Player.new('macey')}

  describe 'returns a player name' do
    it 'returns the name' do
      expect(player_1.player_name).to eq('maggie')
    end
  end
end
