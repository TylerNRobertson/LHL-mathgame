class Player
  attr_accessor :player_lives, :player_name
  def initialize(name)
    @player_name = name
    @player_lives = 3
  end
  def lose_life()
    @player_lives -= 1
  end
end
