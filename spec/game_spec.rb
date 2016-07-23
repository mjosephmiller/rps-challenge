require 'game'
require 'player'
require 'computer'

describe Game do

  subject(:game){ Game.new(computer, player) }
  let(:computer){ Computer.new }
  let(:player){ Player.new("Mike") }


  describe '#Game.new' do
    it 'should initialize a new game with a player' do
      expect(game.player).to eq player
    end
  end

end
