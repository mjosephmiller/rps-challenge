class Computer

attr_reader :choice

  def make_random_choice
    @choice = Game::CHOICES.sample
    @choice
  end

end
