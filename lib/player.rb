class Player
  attr_reader :player_name, :choice

  def initialize(name)
    @player_name = name
    @choice
  end

  def choose(rps)
    @choice = rps
  end
end
