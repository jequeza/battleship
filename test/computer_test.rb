require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/computer'

class ComputerTest < MiniTest::Test

  def test_it_has_a_board
    computer = Computer.new
    assert_equal 16, computer.board.cells.count
    assert_instance_of Computer, computer
  end

  def test_it_can_place_ships
    computer = Computer.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    computer.place_computer_ship_three(cruiser)
    assert_equal 1, computer.ships
    computer.place_computer_ship_two(submarine)
    assert_equal 2, computer.ships
  end

end
