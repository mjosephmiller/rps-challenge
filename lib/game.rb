require 'rubygems'
require 'capybara'
require 'capybara/dsl'
Capybara.current_driver

class Game

  CHOICES = ['rock', 'paper', 'scissors']
  
  attr_reader :player

  def initialize(computer = Computer.new, player = Player.new)
    @computer = computer
    @player = player
    @choices = []
  end
end
