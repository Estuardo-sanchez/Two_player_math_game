class Player
  def initialize (player_name)
    @player_name = player_name
    @lives = 3
  end 

  def score
    @lives
  end 
  
  def lives_loss
    @lives = @lives - 1
  end
  
  def place_name
    @player_name
  end
end 