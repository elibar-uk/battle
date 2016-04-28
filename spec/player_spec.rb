require 'player'

describe Player do
  subject (:sity) { Player.new('Sity') }
  subject (:chris) { Player.new('Chris') }
  subject (:loser) { Player.new('Loser', 10) }

  describe '#name' do
    it 'returns the name' do
      expect(sity.name).to eq('Sity')
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(sity.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { chris.receive_damage }.to change { chris.hit_points }.by(-10)
    end
  end


end
