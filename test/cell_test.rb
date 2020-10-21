require 'minitest/autorun'
require 'minitest/pride'
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
    assert_equal "Cruiser", cell.ship.name
    assert_equal false, cell.empty?
  end

  def test_fired_upon_is_false
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    assert_equal false, cell.fired_upon?
  end

  def test_it_took_fire
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    cell.fire_upon
    assert_equal 2, cell.ship.health
    assert_equal false, cell.fired_upon?
  end

  def test_render_method
    cell_1 = Cell.new("B4")
    cell_2 = Cell.new("C3")
    cruiser = Ship.new("Cruiser", 3)
    assert_equal ".", cell_1.render
    cell_1.fire_upon
    assert_equal "M", cell_1.render
  end

  def test_render_method_Hit
    cruiser = Ship.new("Cruiser", 3)
    cell_1 = Cell.new("B4")
    cell_2 = Cell.new("C3")
    cell_2.place_ship(cruiser)
    assert_equal ".", cell_2.render
    cell_2.fire_upon
    assert_equal "H", cell_2.render
  end

  def test_render_true_locater
    cell_1 = Cell.new("A1")
    cell_2 = Cell.new("A2")
    cell_3 = Cell.new("A3")
    cruiser = Ship.new("Cruiser", 3)
    cell_2.place_ship(cruiser)
    cell_1.place_ship(cruiser)
    cell_3.place_ship(cruiser)
    assert_equal "S", cell_2.render(true)
    cell_2.fire_upon
    assert_equal "H", cell_2.render
    cell_1.fire_upon
    assert_equal "H", cell_2.render
    assert_equal false, cruiser.sunk?
    cell_3.fire_upon
    assert_equal true, cruiser.sunk?
    assert_equal "X", cell_3.render
  end

end
