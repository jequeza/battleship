require './lib/board'
require 'pry'

class Computer
  attr_reader :board
  def initialize #no need for an argument here
    @possible = []
    @board = Board.new("Enemy Board:")
  end

  def generate_possible_attack_coordinates
    board.cells.map do |coords|
      @possible << coords
    end
  end

  def place_computer_ship_three(ship)
    #add code to check if coordinates have a valid placement
    #then add code to place the ship on those coordinates.

  end

  def place_computer_ship_two(ship)
    #same as above
  end



  def generate_coordinates_for_turn
    # generates random coordinates for turn,
  end

  def end_turn(input)
    #delete possible coordinate after attack
  end


end
