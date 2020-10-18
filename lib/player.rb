require './lib/board.rb'
require './lib/text'


class Player
  include Text
<<<<<<< HEAD
  attr_reader :board, :ships
=======
  attr_reader :board, :hits
>>>>>>> 4c612e47a444efc18372a894a10a2856a9b52d6f

  def initialize
    @board = Board.new('Player_1:')
    @possible = ["A1","A2","A3","A4","B1","B2","B3","B4","C1","C2","C3","C4","D1","D2","D3","D4"]
    @hits = 0
    @ships = 0
  end


  def place_player_ship_one(ship)
    p sub
    p co1
    coord_1 = gets.chomp.upcase
    p co2
    coord_2 = gets.chomp.upcase
    board.valid_coordinate?(coord_1) && board.valid_coordinate?(coord_2)
      coordinates = ["#{coord_1}", "#{coord_2}"]
    if @board.valid_placement?(ship, coordinates)
        @board.place(ship, coordinates)
        @ships += 1
        p set
    else
      puts overlap
      place_player_ship_one(ship)
    end

  end

  def place_player_ship_two(ship)
    p cruiser
    p co1
    coord_1 = gets.chomp.upcase
    p co2
    coord_2 = gets.chomp.upcase
    p co3
    coord_3 = gets.chomp.upcase
    board.valid_coordinate?(coord_1) && board.valid_coordinate?(coord_2) && board.valid_coordinate?(coord_3)
    coordinates = ["#{coord_1}", "#{coord_2}", "#{coord_3}"]
    if @board.valid_placement?(ship, coordinates)
      @board.place(ship, coordinates)
      @ships += 1
      p set
    else
      p overlap
      place_player_ship_two(ship)
    end
    # get input from for placing ships. input gets validated
    # if pass, then ships are placed (*keep looping if not)
  end

  def ships_sunk?
    @hits == 5
  end


  def player_damage_phase
    # gets input from player on what coordinates to fire upon, validates,
    # stores every previous selection. Updates computer board display
  end


end
