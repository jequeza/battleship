require './lib/player'
require './lib/computer'
require './lib/board'
require './lib/ship'
require './lib/text'


class Turn
include Text

  attr_reader :player, :computer, :a, :b

  def initialize
    @player = Player.new
    @computer = Computer.new
    @a = a
    @b = b
  end

  def time_start
    @a = Time.now
  end

  def place_computer_ships(ship_1, ship_2)
    @computer.place_computer_ship_two(ship_2)
    @computer.place_computer_ship_three(ship_1)
  end

  def place_player_ship_1(submarine)
    sub
    player.place_player_ship_one(submarine)
    set
  end

  def place_player_ship_2(cruiser)
    cruiser
    player.place_player_ship_two(cruiser)
  end


  def player_shoots
    fire_upon = "A1"
    fire
    @computer.board.cells[fire_upon].fire_upon
    if @computer.board.cells[fire_upon].render == "H"
      @computer.hit_taken
    end
  end

  def computer_shoots
    fire = @computer.possible.shuffle!.pop
    @player.board.cells[fire].fire_upon
    if @player.board.cells[fire].render == "H"
      @player.hit_taken
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
    timer (@b - @a).to_i
  end

end
