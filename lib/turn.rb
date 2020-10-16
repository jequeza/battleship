require './lib/player'
require './lib/computer'
require './lib/board'

class Turn

  attr_reader :player, :computer, :a, :b

  def initialize
    @player = Player.new
    @computer = Computer.new
    @a = Time.now
  end

  def place_computer_ships
    @computer.place_computer_ship_two
    @computer.place_computer_ship_three
  end

  def place_player_ship_1
    coord_1 = gets.chomp
    player.board.valid_coordinate?(coord_1)
    coord_2 = gets.chomp
    player.board.valid_coordinate?(coord_2)
    coordinates = "#{coord_1} #{coord_2}"
    player.place_player_ship_one(submarine, coordinates)
  end

  def place_player_ship_2
    coord_1 = gets.chomp
    player.board.valid_coordinate?(coord_1)
    coord_2 = gets.chomp
    player.board.valid_coordinate?(coord_2)
    coord_3 = gets.chomp
    player.board.valid_coordinate?(coord_3)
    coordinates = "#{coord_1} #{coord_2} #{coord_3}"
    player.place_player_ship_two(cruiser, coordinates)
  end


  def player_shoots
    fire_upon = gets.chomp
    @computer.board.cells(fire).fire_upon
  end

  def computer_shoots
    fire = @computer.generate_coordinates_for_turn
    @player.board.cells(fire).fire_upon
  end

  def computer_board
    @computer.board.render
  end

  def player_board
    @player.board.render(true)
  end

  def ships_sunk?
    @computer.ships_sunk? || @player.ships_sunk?
    computer_board
    player_board
    @b = Time.now
  end

  def game_time
    (@b - @a).to_i
  end




end
