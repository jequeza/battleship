require './lib/ship.rb'

class Cell
  attr_reader :coordinate,
              :ship,
              :shot_taken,
              :cell_status

  def initialize(coordinate)
    @coordinate = coordinate
    @ship = nil
    @shot_taken = false
    @cell_status = "."
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
    if ship.health == 0
      return true
    elsif  ship.length =~ ship.health
      return true
    else false
    end
  end

  def fire_upon
    if !empty?
      ship.hit
      @cell_status = "H"
    else
      @cell_status = "M"
    end
  end

  def render(location = false)
    if !empty?  && ship.health <= 0
      @cell_status = "X"
    elsif location == true && @cell_status == "."
      "S"
    else
      @cell_status
    end
  end

end
