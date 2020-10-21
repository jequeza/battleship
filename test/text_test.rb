require 'minitest/autorun'
require 'minitest/pride'
require './lib/text'

class TextTest < MiniTest::Test
  
  def test_it_exists_and_has_attribute
    text = Text.new
    assert_instance_of Text, text
  end

  def test_it_displays_menu_text
    text = Text.new
    assert_equal "Welcome to BATTLESHIP", text.start
    assert_equal "Enter p to play or q to quit!", text.play
    assert text.congrats
    assert_equal "Come back when you're ready for a challenge.", text.thanks_message
  end

  def test_it_displays_battle_text
    text = Text.new
    assert_equal "Choose a coordinate from the enemy board to fire upon!", text.take_aim
    assert_equal "Zeroing in on your Cruiser location!", text.comp_aim
    assert text.fire
  end

  def test_it_displays_layout_text
    text = Text.new
    assert text.layout
    assert_equal "Lets place your Cruiser!", text.cruiser
    assert_equal "Lets place your Submarine!", text.sub
    assert_equal "Enter First Coordinate", text.co1
    assert_equal "Enter Second Coordinate", text.co2
    assert_equal "Enter Third Coordinate", text.co3
    assert_equal "Set and ready to Fire!", text.set
  end

  def test_it_displays_error_messages
    text = Text.new
    assert text.overlap
    assert_equal "Please choose a valid Coordinate", text.invalid
  end

end
