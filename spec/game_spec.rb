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

  describe '#add player selection' do
    it "assigns the user's choice to to the player_choice" do
    game.add_player_selection(player.choose("Scissors"))
    expect(game.player_choice).to include("Scissors")
  end
end

  # describe "#add computer selection" do
  #
  #   it "assigns the computer's choice to to the computer_choice" do
  #     allow(computer).to receive(:make_random_choice).and_return("Rock")
  #     game.add_computer_selection(computer.make_random_choice)
  #     expect(game.computer_choice).to eq("Rock")
  #   end
  # end
end
