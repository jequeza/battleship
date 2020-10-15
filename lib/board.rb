require './lib/check'
require './lib/ship'
require 'pry'

class Board
  attr_reader :name, :cells

  def initialize(name="default")
    @name = name
    @cells = {
      "A1" => Cell.new("A1"),
      "A2" => Cell.new("A2"),
      "A3" => Cell.new("A3"),
      "A4" => Cell.new("A4"),
      "B1" => Cell.new("B1"),
      "B2" => Cell.new("B2"),
      "B3" => Cell.new("B3"),
      "B4" => Cell.new("B4"),
      "C1" => Cell.new("C1"),
      "C2" => Cell.new("C2"),
      "C3" => Cell.new("C3"),
      "C4" => Cell.new("C4"),
      "D1" => Cell.new("D1"),
      "D2" => Cell.new("D2"),
      "D3" => Cell.new("D3"),
      "D4" => Cell.new("D4")
    }
  end

  def render(location = false)
      "\n#{@name}
        1  2  3  4
      A #{@cells["A1"].render(location)}  #{@cells["A2"].render(location)}  #{@cells["A3"].render(location)}  #{@cells["A4"].render(location)}
      B #{@cells["B1"].render(location)}  #{@cells["B2"].render(location)}  #{@cells["B3"].render(location)}  #{@cells["B4"].render(location)}
      C #{@cells["C1"].render(location)}  #{@cells["C2"].render(location)}  #{@cells["C3"].render(location)}  #{@cells["C4"].render(location)}
      D #{@cells["D1"].render(location)}  #{@cells["D2"].render(location)}  #{@cells["D3"].render(location)}  #{@cells["D4"].render(location)}
      "
  end

  def valid_coordinate?(coordinate)
    if cells.include?(coordinate)
      true
    else
      false
    end
  end

  def overlap?(coordinates)
    coordinates.all? do |coord|
     @cells[coord].empty?
    end
  end

  def valid_placement?(ship, coordinates)
    if ship.length == coordinates.length && overlap?(coordinates)
     Check.new(coordinates).valid
    else
     false
    end
  end

  def place(ship_name, coordinates)
    coordinates.map do |coordinate|
     @cells[coordinate].place_ship(ship_name)
    end
  end

end
