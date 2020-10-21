require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_player_has_a_board
    player_1 = Player.new
    assert_equal 16, player_1.board.cells.count
    assert_instance_of Player, player_1
  end

  def test_player_board_cells_populate
    player_1 = Player.new
    cruiser = Ship.new("Cruiser", 3)
    player_1.board.place(cruiser, ["A1", "A2", "A3"])
    assert_equal "Cruiser" , player_1.board.cells["A3"].ship.name
    assert_equal "Cruiser" , player_1.board.cells["A2"].ship.name
    assert_equal "Cruiser" , player_1.board.cells["A1"].ship.name
  end

  def test_player_can_place_ships
    player_1 = Player.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal "Ship Set and ready to Fire!", player_1.place_player_ship_two(cruiser)
    assert_equal "Ship Set and ready to Fire!", player_1.place_player_ship_one(submarine)
  end

end
