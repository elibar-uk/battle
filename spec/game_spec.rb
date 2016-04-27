require 'game'

describe Game do
  let(:player_1) { double :player}
  let(:player_2) { double :player}
  subject(:game) { described_class.new(player_1, player_2) }


  describe '#player_1' do
    it "accepts player_1 instances" do
      expect(game.player_1).to eq player_1
    end
  end
  describe '#player_2' do
    it "accepts player_2 instances" do
      expect(game.player_2).to eq player_2
    end
  end
  describe '#attack' do
    it "makes a damge to the player" do
      expect(player_2).to receive(:get_damage)
      game.attack(player_2)
    end
  end
end
