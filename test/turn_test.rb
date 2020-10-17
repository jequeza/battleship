require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/turn'

class TurnTest < MiniTest::Test

  def test_it_exists
    game = Turn.new

    assert_instance_of Turn, game
  end

  def test_it_can_create_a_player
    game = Turn.new
    game.player_shoots

    assert_equal "Player_1:", game.player.board.name
    assert_equal 16, game.player.board.cells.count
    assert_nil   game.player.board.cells["A1"].ship
    assert_equal "M", game.computer.board.cells["A1"].render

  end

  def test_it_can_create_a_computer
    game = Turn.new
    game.computer_shoots

    assert_equal "Computer:", game.player.board.name
    assert_equal 16, game.player.board.cells.count
    assert_nil   game.player.board.cells["A1"].ship
    assert_equal "M", game.player.board.cells["A1"].render

  end

  def test_place_player_ship_1
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

    assert_equal "Ship Placed",game.place_player_ship_1(submarine)
  end

  def test_place_player_ship_2
    # skip
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

    assert_equal "Ship Placed", game.place_player_ship_2(cruiser)

  end

  def test_place_computer_ships
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

  end

  def test_player_shoots
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

  end

  def test_computer_shoots
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

  end

  def test_ships_sunk?
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

  end

end
