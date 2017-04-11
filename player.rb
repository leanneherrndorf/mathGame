#Creates a new player

class Player
  attr_accessor :id, :life
  def initialize(id, life)
    @id = id
    @life = life
  end
end

player1 = Player. new("1", "3")
player2 = Player. new("2", "3")