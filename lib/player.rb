class Player
  attr_reader :player_name

  def initialize(name)
    @player_name = name
  end

  def choose(rps)
    @choice = rps
  end
end
