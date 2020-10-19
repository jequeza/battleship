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
    binding.pry

    assert_instance_of Turn, game
  end

  def test_it_can_create_a_player
    game = Turn.new
    game.player_shoots

    assert_equal "Your Board:", game.player.board.name
    assert_equal 16, game.player.board.cells.count
    assert_nil   game.player.board.cells["A1"].ship
    assert_equal ".", game.computer.board.cells["A1"].render

  end

  def test_it_can_create_a_computer
    game = Turn.new
    game.computer_shoots

    assert_equal 16, game.player.board.cells.count
    assert_nil   game.player.board.cells["A1"].ship
    assert_equal "M", game.player.board.cells["A1"].render

  end

  def test_place_player_ship_1
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

    assert_equal "Submarine Set and ready to Fire!",game.place_player_ship_1(submarine)
  end

  def test_place_player_ship_2
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

    assert_equal "Cruiser Set and ready to Fire!", game.place_player_ship_2(cruiser)
  end

  def test_place_computer_ships
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    game.place_computer_ships

    assert_equal 2, game.computer.ships
  end

  def test_player_shoots
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

    assert_equal "M", game.player_shoots
  end

  def test_computer_shoots
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

    assert_equal "M", game.computer_shoots
  end

  def test_ships_sunk?
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)

    assert_equal false, game.ships_sunk?

    game.computer.hit_taken
    game.computer.hit_taken
    game.computer.hit_taken
    game.computer.hit_taken
    game.computer.hit_taken
    assert_equal true, game.ships_sunk?
  end

end
