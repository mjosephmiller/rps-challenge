require 'player'

describe Player do
    subject(:player){ described_class.new('Mike') }

  describe '#Player.new' do
    it 'should initialize a player with a name' do
      expect(player.player_name).to eq 'Mike'
    end
  end

  describe 'choose' do
    it 'should choose a move' do
      player.choose('rock')
      expect(player.choice).to eq 'rock'
    end
  end

end
