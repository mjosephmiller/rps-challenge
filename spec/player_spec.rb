require 'player'

describe Player do
  # let(:player) { double(:player, name: "Kyle") }

  describe '#Player.new' do
    it 'should initialize a player with a name' do
      player = Player.new('name')
      expect(player.player_name).to eq 'name'
    end
  end
end
