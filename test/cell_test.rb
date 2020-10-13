require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ship'
require './lib/cell'

class CellTest < MiniTest::Test

  def test_it_exists
    cell = Cell.new("B4")

    assert_equal "B4", cell.coordinate
    assert_nil nil, cell.ship
    assert_equal true, cell.empty?

    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    assert_instance_of Ship, cell.cruiser

  end

end
