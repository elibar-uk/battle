require 'player'

describe Player do
  subject(:bob) {described_class.new('Bob')}

  it 'returns a name' do
    expect(bob.name).to eq 'Bob'
  end
end
