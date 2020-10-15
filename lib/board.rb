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
      "D4" => Cell.new("D4"),
    }
  end

  def render(location = false)
    if location == true
      "\n#{@name}
        1  2  3  4
      A #{@cells["A1"].render(true)}  #{@cells["A2"].render(true)}  #{@cells["A3"].render(true)}  #{@cells["A4"].render(true)}
      B #{@cells["B1"].render(true)}  #{@cells["B2"].render(true)}  #{@cells["B3"].render(true)}  #{@cells["B4"].render(true)}
      C #{@cells["C1"].render(true)}  #{@cells["C2"].render(true)}  #{@cells["C3"].render(true)}  #{@cells["C4"].render(true)}
      D #{@cells["D1"].render(true)}  #{@cells["D2"].render(true)}  #{@cells["D3"].render(true)}  #{@cells["D4"].render(true)}
      "
    else
      "\n#{@name}
        1  2  3  4
      A #{@cells["A1"].render}  #{@cells["A2"].render}  #{@cells["A3"].render}  #{@cells["A4"].render}
      B #{@cells["B1"].render}  #{@cells["B2"].render}  #{@cells["B3"].render}  #{@cells["B4"].render}
      C #{@cells["C1"].render}  #{@cells["C2"].render}  #{@cells["C3"].render}  #{@cells["C4"].render}
      D #{@cells["D1"].render}  #{@cells["D2"].render}  #{@cells["D3"].render}  #{@cells["D4"].render}
      "
    end
  end

  def valid_coordinate?(coordinate)
    if cells.include?(coordinate)
      true
    else
      false
    end
  end

  def overlap?(coordinates)
    coordinates.none? do |coord|
     @cells[coord].empty?
    end
  end

  def valid_placement?(ship, coordinates)
    if ship.length == coordinates.length && !overlap?(coordinates)
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
