require './lib/board'
require 'pry'

class Computer
  attr_reader :board, :ships
  def initialize
    @possible_three_place = [["A1", "A2", "A3"], ["B3", "C3", "D3"], ["D2", "D3", "D4"]]
    @possible_two_place = [["B1", "C1"], ["B4", "C4"]]
    @board = Board.new("Enemy Board:")
    @possible = []
    @cells = computer_attack
    @ships = 0
  end

  def computer_attack
    board.cells.map do |coords|
      @possible << coords
    end
  end

  def place_computer_ship_three(ship_name)
    coordinates = @possible_three_place.sample
    board.place(ship_name, coordinates)
    @ships += 1
  end

  def place_computer_ship_two(ship_name)
    coordinates = @possible_two_place.sample
    board.place(ship_name, coordinates)
    @ships += 1
  end


  def end_turn(input)
    #delete possible coordinate after attack
  end


end
