require './lib/board.rb'
require './lib/text'


class Player
  include Text
  attr_reader :board

  def initialize
    @board = Board.new('Player_1:')
    @possible = ["A1","A2","A3","A4","B1","B2","B3","B4","C1","C2","C3","C4","D1","D2","D3","D4"]
    @hits = 0
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
        set
    else
      overlap
      place_player_ship_one(ship)
    end

  end

  def place_player_ship_two(ship)
    co1
    coord_1 = gets.chomp.upcase
    co2
    coord_2 = gets.chomp.upcase
    co2
    coord_3 = gets.chomp.upcase
    board.valid_coordinate?(coord_1) && board.valid_coordinate?(coord_2) && board.valid_coordinate?(coord_3)
    coordinates = ["#{coord_1}", "#{coord_2}", "#{coord_3}"]
    if @board.valid_placement?(ship, coordinates)
      @board.place(ship, coordinates)
      set
    else
      overlap
      place_player_ship_two(ship)
    end
  end

  def ships_sunk?
    @hits == 5
  end
end
