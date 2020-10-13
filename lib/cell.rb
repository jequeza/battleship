class Cell
  attr_reader :coordinate,
              :ship


  def initialize(coordinate)
    @coordinate = coordinate
    @ship = nil
  end

  def place_ship(ship_name)
    @ship = ship_name
  end

  def empty?
    if ship == nil
      return true
    else
      return false
    end
  end

  def fired_upon?
    if ship.length =~ ship.health
      return true
    else false
    end
  end

  def fire_upon
    ship.health -= 1
  end

end
