require 'player'

describe Player do
  subject(:bob) { Player.new('Bob') }
  subject(:mike) { Player.new('Mike') }

describe '#name' do
  it 'returns a name' do
    expect(bob.name).to eq 'Bob'
  end
end
describe 'hit_points' do
  it 'returns the hit points' do
    expect(bob.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end
end
describe '#attack' do
  it 'damages the player' do
    expect(mike).to receive(:get_damage)
    bob.attack(mike)
  end
end
describe '#get_damage' do
  it 'reduces the player hit points' do
    expect { mike.get_damage}.to change {mike.hit_points}.by(-10)
  end
end
end
