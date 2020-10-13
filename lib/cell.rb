class Cell
  attr_reader :coordinate,
              :ship,
              :shot_taken,
              :cell_status


  def initialize(coordinate)
    @coordinate = coordinate
    @ship = nil
    @shot_taken = false
    @cell_status = 0
  end

  def place_ship(ship_name)
    @ship = ship_name
  end

  def empty?
    if ship == nil
      return true
    else
      return false
      @cell_status += 1
    end
  end

  def fired_upon?
    if ship.length =~ ship.health
      return true
    else false
    end
  end

  def fire_upon
    if !empty?
      ship.hit
    end
    @cell_status += 1
  end

  def render(location = false)
    if location == true && ship!= nil
      return "S"
    elsif @ship != nil && ship.sunk? == true
      return "X"
    elsif @cell_status == 1 &&  ship != nil
      return "H"
    elsif @cell_status == 1
      return "M"
    elsif  @cell_status == 0
      return "."
    end
  end


end
