require './lib/player'
require './lib/computer'
require './lib/board'
require './lib/ship'


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

  def place_player_ship_1(submarine)
    player.place_player_ship_one(submarine)
  end

  def place_player_ship_2(cruiser)
    player.place_player_ship_two(cruiser)
  end


  def player_shoots
    fire_upon = "A1"
    @computer.board.cells[fire_upon].fire_upon
    if @computer.board.cells[fire_upon].render == "H"
      @computer.hits += 1
    end
  end

  def computer_shoots
    fire = @computer.generate_coordinates_for_turn
    @player.board.cells[fire].fire_upon
    if @player.board.cells[fire].render == "H"
      @player.hits += 1
    end

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
