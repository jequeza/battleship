require './lib/player'
require './lib/computer'
require './lib/board'
require './lib/ship'
require './lib/text'

class Turn
include Text

  attr_reader :player, :computer

  def initialize
    @player = Player.new
    @computer = Computer.new
  end

  def game_on
    until ships_sunk? == true do
      puts computer_board
      sleep(2)
      puts player_board
      sleep(2)
      take_aim
      sleep(1)
      player_shoots
      comp_aim
      sleep(2)
      computer_shoots
    end
      game_results
  end

  def place_computer_ships(ship_1, ship_2)
    @computer.place_computer_ship_two(ship_2)
    @computer.place_computer_ship_three(ship_1)
  end

  def place_player_ship_1(ship_name)
    sub
    player.place_player_ship_one(ship_name)
    p "#{ship_name.name} " + set
  end

  def place_player_ship_2(ship_name)
    cruiser
    player.place_player_ship_two(ship_name)
    p "#{ship_name.name} " + set
  end

  def player_shoots
    fire_upon = gets.chomp.upcase
    until @computer.board.valid_coordinate?(fire_upon)
      invalid
      fire_upon = gets.chomp.upcase
    end
      fire
      @computer.board.cells[fire_upon].fire_upon
    if @computer.board.cells[fire_upon].render == "H"
      @computer.hit_taken
    elsif @computer.board.cells[fire_upon].render == "X"
      @computer.hit_taken
    end
  end

  def computer_shoots
    fire = @computer.possible.shuffle!.pop
    @player.board.cells[fire].fire_upon
    if @player.board.cells[fire].render == "H"
      @player.hit_taken
    elsif @player.board.cells[fire].render == "X"
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
  end

  def game_results
    if @computer.ships_sunk?
      congrats
    elsif @player.ships_sunk?
      nice_try
    end
  end

end
