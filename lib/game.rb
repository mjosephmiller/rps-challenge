require 'rubygems'
require 'capybara'
require 'capybara/dsl'
Capybara.current_driver

class Game
  attr_reader :player
  
  def initialize(player)
    @player = player
  end
end
