require './lib/turn'

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
  game.place_computer_ships
  game.place_player_ship_1
  game.place_player_ship_2

  game_on(game)
end
