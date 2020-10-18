require './lib/turn'
require './lib/text'
include Text

def game_on(game)
  loop do
    game.player_shoots
    # game.computer_shoots
    puts game.computer_board
    puts game.player_board
    # if game.ships_sunk?
    #   break
    # end
  end
end


loop do
  start
  response = gets.chomp.upcase
  if response == "YES"
    game = Turn.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    game.place_computer_ships(submarine, cruiser)
    layout
    game.place_player_ship_1(submarine)
    game.place_player_ship_2(cruiser)
    set
    game.time_start
    game_on(game)
  else
    break
  end
end
