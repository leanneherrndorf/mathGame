#Creates a new player

class Player

  attr_accessor :name
  attr_accessor :life

  def initialize(name)
    @name = name
    @life = 3
  end
end

