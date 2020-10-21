require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship.rb'

class ShipTest < MiniTest::Test

  def test_it_exists
    cruiser = Ship.new("Cruiser", 3)
    assert_instance_of Ship, cruiser
    assert_equal "Cruiser", cruiser.name
  end

  def test_it_has_health_and_length
    cruiser = Ship.new("Cruiser", 3)
    assert_equal 3, cruiser.length
    assert_equal 3, cruiser.health
  end

  def test_ships_can_get_damage_and_sink
    cruiser = Ship.new("Cruiser", 3)
    assert_equal false, cruiser.sunk?
    cruiser.hit
    assert_equal 2, cruiser.health
    cruiser.hit
    assert_equal 1, cruiser.health
    assert_equal false, cruiser.sunk?
    cruiser.hit
    assert_equal true, cruiser.sunk?
  end

end
