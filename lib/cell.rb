class Cell
  attr_reader :cell_number

  def initialize(cell_number)
    @cell_number = cell_number
  end

  def coordinate
    @cell_number
  end

  def ship
    @ship
  end

  def place_ship(ship_name)
    add_ship = Ship.new(name, length)
    add_ship
  end

  def empty?
    if !ship == nil
      return false
    else
      return true
    end
  end

end
