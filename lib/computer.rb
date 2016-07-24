class Computer

attr_reader :choice, :player_name
attr_accessor :choice

  def initialize
    @choice = ''
    @player_name = 'Computer'
  end

  def make_random_choice
    @choice = Game::CHOICES.sample
    @choice
  end

end
