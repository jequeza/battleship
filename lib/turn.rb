require './lib/player'
require './lib/computer'
require './lib/board'
require './lib/ship'
require './lib/text'

class Turn

  attr_reader :player, :computer, :text

  def initialize
    @player = Player.new
    @computer = Computer.new
    @text = Text.new
  end

  def game_on
    until ships_sunk? == true do
      puts computer_board
      sleep(1)
      puts player_board
      sleep(1)
      text.take_aim
      sleep(1)
      player_shoots
      text.comp_aim
      sleep(1)
      computer_shoots
    end
      game_results
  end

  def place_computer_ships(ship_1, ship_2)
    @computer.place_computer_ship_two(ship_2)
    @computer.place_computer_ship_three(ship_1)
  end

  def place_player_ship_1(ship_name)
    text.sub
    player.place_player_ship_one(ship_name)
    p "#{ship_name.name} " + text.set
  end

  def place_player_ship_2(ship_name)
    text.cruiser
    player.place_player_ship_two(ship_name)
    p "#{ship_name.name} " + text.set
  end

  def player_shoots
    fire_upon = gets.chomp.upcase
    until @computer.board.valid_coordinate?(fire_upon) && @computer.board.cells[fire_upon].shot_taken == false
      text.invalid
      fire_upon = gets.chomp.upcase
    end
      text.fire
      @computer.board.cells[fire_upon].fire_upon
    if @computer.board.cells[fire_upon].render == "H"
      @computer.hit_taken
      p "Good Job. Your shot #{fire_upon} was a direct hit."
    elsif @computer.board.cells[fire_upon].render == "X"
      ship_name = @computer.board.cells[fire_upon].ship.name
      @computer.hit_taken
      p "My #{ship_name} now rests in the Davy Jones locker."
    else
      p "Your #{fire_upon} was a total miss!!! Better luck next time."
    end
  end

  def computer_shoots
    fire = @computer.possible.shuffle!.pop

    @player.board.cells[fire].fire_upon
    if @player.board.cells[fire].render == "H"
      ship_name = @player.board.cells[fire].ship.name
      @player.hit_taken
      p "I hit your #{ship_name} on #{fire}!!!"
    elsif @player.board.cells[fire].render == "X"
      ship_name = @player.board.cells[fire].ship.name
      @player.hit_taken
      p "Your #{ship_name} is fish food!!!"
    else
      p "My aim is off. Gotta hit the range."
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
      text.congrats
      sleep(1)
      text.winner
    elsif @player.ships_sunk?
      text.nice_try
    end
  end

end
