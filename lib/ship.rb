class Ship
  attr_reader :name, :length, :health

  def initialize(name, length)
    @name = name
    @length = length
    @health = length
  end

  def health
    @health
  end

  def sunk?
    if health == 0
      return true
    else
      return false
    end
  end

  def hit
    @health -= 1
  end


end
