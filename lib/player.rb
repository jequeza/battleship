require './lib/board'
require './lib/text'


class Player
  attr_reader :board,
              :ships,
              :hits,
              :text

  def initialize
    @hits = 0
    @board = Board.new('Your Board:')
    @possible = []
    @ships = 0
    @text = Text.new
  end

  def hit_taken
    @hits += 1
  end

  def gen_cells
    board.cells.map do |coords|
      @possible << coords[0]
    end
  end

  def place_player_ship_one(ship)
    text.co1
    coord_1 = gets.chomp.upcase
    text.co2
    coord_2 = gets.chomp.upcase
    until board.valid_coordinate?(coord_1) && board.valid_coordinate?(coord_2)
      text.invalid
      text.co1
      coord_1 = gets.chomp.upcase
      text.co2
      coord_2 = gets.chomp.upcase
    end
    coordinates = ["#{coord_1}", "#{coord_2}"]
    if @board.valid_placement?(ship, coordinates)
        @board.place(ship, coordinates)
        @ships += 1
    else
      text.overlap
      place_player_ship_one(ship)
    end
  end

  def place_player_ship_two(ship)
    text.co1
    coord_1 = gets.chomp.upcase
    text.co2
    coord_2 = gets.chomp.upcase
    text.co3
    coord_3 = gets.chomp.upcase
    until board.valid_coordinate?(coord_1) && board.valid_coordinate?(coord_2) && board.valid_coordinate?(coord_3)
      text.invalid
      text.co1
      coord_1 = gets.chomp.upcase
      text.co2
      coord_2 = gets.chomp.upcase
      text.co3
      coord_3 = gets.chomp.upcase
    end
    coordinates = ["#{coord_1}", "#{coord_2}", "#{coord_3}"]
    if @board.valid_placement?(ship, coordinates)
      @board.place(ship, coordinates)
      @ships += 1
    else
      text.overlap
      place_player_ship_two(ship)
    end
  end

  def ships_sunk?
    @hits == 5
  end
end
