require 'game'

describe Game do
  subject(:game) { described_class.new('player') }
  # let(:player) { double(:player, name: "Kyle") }

  describe '#Game.new' do
    it 'should initialize a new game with a player' do
      expect(game.player).to eq 'player'
    end
  end

end
