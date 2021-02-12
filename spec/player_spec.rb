require 'player'

describe Player do
  subject(:bob) { Player.new('Bob') }
  subject(:sandra) { Player.new('Sandra') }

  describe '#name' do
    it 'returns the name' do
      expect(bob.name).to eq 'Bob'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(bob.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(sandra).to receive(:receive_damage)
      bob.attack(sandra)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { bob.receive_damage }.to change { bob.hit_points }.by(-10)
    end
  end
end