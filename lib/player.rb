require './lib/board.rb'
require './lib/text'


class Player
  include Text
  attr_reader :board, :ships, :hits


  def initialize
    @hits = 0
    @board = Board.new('Player_1:')
    @possible = []
    @ships = 0
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
    co1
    coord_1 = gets.chomp.upcase
    co2
    coord_2 = gets.chomp.upcase
    board.valid_coordinate?(coord_1) && board.valid_coordinate?(coord_2)
      coordinates = ["#{coord_1}", "#{coord_2}"]
    if @board.valid_placement?(ship, coordinates)
        @board.place(ship, coordinates)
        @ships += 1
    else
      puts overlap
      place_player_ship_one(ship)
    end

  end

  def place_player_ship_two(ship)
    co1
    coord_1 = gets.chomp.upcase
    co2
    coord_2 = gets.chomp.upcase
    co3
    coord_3 = gets.chomp.upcase
    board.valid_coordinate?(coord_1) && board.valid_coordinate?(coord_2) && board.valid_coordinate?(coord_3)
    coordinates = ["#{coord_1}", "#{coord_2}", "#{coord_3}"]
    if @board.valid_placement?(ship, coordinates)
      @board.place(ship, coordinates)
      @ships += 1
    else
      overlap
      place_player_ship_two(ship)
    end
  end

  def ships_sunk?
    @hits == 5
  end
end
