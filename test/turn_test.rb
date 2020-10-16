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

  end

  def test_it_can_create_a_computer
    game = Turn.new

  end

  def test_place_player_ship_1
    game = Turn.new

  end

  def test_place_player_ship_2
    game = Turn.new

  end

  def test_place_computer_ships
    game = Turn.new

  end

  def test_player_shoots
    game = Turn.new

  end

  def test_computer_shoots
    game = Turn.new

  end

  def test_ships_sunk?
    game = Turn.new

  end

end
