require './lib/turn'

def game_on(game)
  loop do
    game.player_shoots
    game.computer_shoots
    puts game.computer_board
    puts game.player_board
    if game.ships_sunk?
      break
    end
  end
end


loop do
  game = Turn.new
  cruiser = Ship.new("Cruiser", 3)
  submarine = Ship.new("Submarine", 2)
  game.place_computer_ships
  game.place_player_ship_1(submarine)
  game.place_player_ship_2(cruiser)

  game_on(game)
end
