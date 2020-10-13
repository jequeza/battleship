require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ship.rb'

class ShipTest < MiniTest::Test

  def test_it_exists
    cruiser = Ship.new("Cruiser", 3)

    assert_instance_of Ship, cruiser
    assert_equal "Cruiser", cruiser.name
    assert_equal 3, cruiser.length
    assert_equal 3, cruiser.health
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
