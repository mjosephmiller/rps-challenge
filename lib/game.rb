require 'rubygems'
require 'capybara'
require 'capybara/dsl'
Capybara.current_driver
require_relative 'computer'
require_relative 'player'

class Game

  CHOICES = ['Rock', 'Paper', 'Scissors']

  attr_reader :player, :player_choice, :computer_choice, :winner

  def initialize(computer = Computer.new, player = Player.new)
    @computer = computer
    @player = player
    @player_choice = ""
    @computer_choice = ""
    @winner = []
  end

  def add_computer_selection(computer)
    @computer_choice = @computer.choice
  end

  def add_player_selection(player)
    @player_choice = @player.choice
  end

  def compare
   if @player_choice == "Rock" && @computer_choice == "Paper"
     @winner << @computer
   elsif @player_choice == "Rock" && @computer_choice == "Scissors"
     @winner << @player
   elsif @player_choice == "Rock" && @computer_choice == "Rock"
     @winner
   elsif @player_choice == "Paper" && @computer_choice == "Rock"
     @winner << @player
   elsif @player_choice == "Paper" && @computer_choice == "Paper"
     @winner
   elsif @player_choice == "Paper" && @computer_choice == "scissors"
     @winner << @computer
   elsif @player_choice == "scissors" && @computer_choice == "Rock"
     @winner << @computer
   elsif @player_choice == "scissors" && @computer_choice == "Paper"
     @winner << @player
   elsif @player_choice == "scissors" && @computer_choice == "scissors"
     @winner
   end
 end

  def decide_winner
    if @winner.empty?
      "We need a rematch"
    elsif @winner.include?(@computer)
      "Computer wins"
    else
      "#{player.name} wins"
    end
  end

end
