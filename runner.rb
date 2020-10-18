require './lib/turn'
require './lib/text'
require 'pry'
include Text

def game_on(game)
  loop do
    game.player_shoots
    game.computer_shoots
    puts game.computer_board
    puts game.player_board
    break if game.ships_sunk?
  end
end


loop do
  game = Turn.new
  cruiser = Ship.new("Cruiser", 3)
  submarine = Ship.new("Submarine", 2)
  start
  game.place_computer_ships(cruiser, submarine)
  layout
  game.place_player_ship_1(submarine)
  game.place_player_ship_2(cruiser)
  set
  game.time_start
  game_on(game)
end
