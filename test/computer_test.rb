require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
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

    computer.place_computer_ship_three(cruiser, ["A1", "A2", "A3"])
    computer.place_computer_ship_two(submarine, ["B2", "B3"])
    assert_equal "Cruiser" , computer.board.cells["A3"].ship.name
    assert_equal "Cruiser" , computer.board.cells["A2"].ship.name
    assert_equal "Cruiser" , computer.board.cells["A1"].ship.name
    assert_equal "Submarine", computer.board.cells["B2"].ship.name
    assert_equal "Submarine", computer.board.cells["B3"].ship.name
  end

end
