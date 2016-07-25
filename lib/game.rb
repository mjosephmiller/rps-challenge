require 'rubygems'
require 'capybara'
require 'capybara/dsl'
Capybara.current_driver
require_relative 'computer'
require_relative 'player'

class Game

  CHOICES = ['Rock', 'Paper', 'Scissors']

  attr_reader :player, :player_choice, :computer_choice, :winner, :computer, :player
  attr_accessor :player_choice, :computer_choice, :winner

  def initialize(computer = Computer.new, player = Player.new)
    @computer = computer
    @player = player
    @player_choice = ""
    @computer_choice = ""
    @winner = []
  end

  def self.create(computer, player)
    @game = Game.new(computer, player)
  end

  def self.instance
    @game
  end

  def add_computer_selection(computer)
    @computer_choice = @computer.choice
  end

  def add_player_selection(player)
    @player_choice = @player.choice
  end

  def compare
   if @player_choice == "Rock" && @computer_choice == "Paper"
     @winner = @computer
   elsif @player_choice == "Rock" && @computer_choice == "Scissors"
     @winner = @player
   elsif @player_choice == "Rock" && @computer_choice == "Rock"
     @winner
   elsif @player_choice == "Paper" && @computer_choice == "Rock"
     @winner = @player
   elsif @player_choice == "Paper" && @computer_choice == "Paper"
     @winner
   elsif @player_choice == "Paper" && @computer_choice == "Scissors"
     @winner = @computer
   elsif @player_choice == "Scissors" && @computer_choice == "Rock"
     @winner = @computer
   elsif @player_choice == "Scissors" && @computer_choice == "Paper"
     @winner = @player
   elsif @player_choice == "Scissors" && @computer_choice == "Scissors"
     @winner
   end
 end

  def assign_winners
    @winner
  end

  def end_game
    compare
    assign_winners
  end

  # def decide_winner
  #   if @winner.empty?
  #     "We need a rematch"
  #   elsif @winner.include?(@computer)
  #     "Computer wins"
  #   else
  #     "#{@player.player_name} wins"
  #   end
  # end

end
