require './lib/board'


class Computer
  attr_reader :board,
              :ships,
              :possible,
              :hits

  def initialize
    @hits = 0
    @possible_three_place = [["A1", "A2", "A3"], ["B3", "C3", "D3"], ["D2", "D3", "D4"]]
    @possible_two_place = [["B1", "C1"], ["B4", "C4"], ["B2", "C2"]]
    @board = Board.new("Enemy Board:")
    @possible = []
    @cells = computer_gen_cells
    @ships = 0
  end

  def hit_taken
    @hits += 1
  end

  def computer_gen_cells
    board.cells.map do |coords|
      @possible << coords[0]
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

  def ships_sunk?
    @hits == 5
  end

end
