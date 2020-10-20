require './lib/turn'
require './lib/text'
require 'pry'
include Text

loop do
  game = Turn.new
  cruiser = Ship.new("Cruiser", 3)
  submarine = Ship.new("Submarine", 2)
  enemy_cruiser = Ship.new("Cruiser", 3)
  enemy_submarine = Ship.new("Submarine", 2)
  start
  sleep(2)
  play
  input = gets.chomp
  if input == "p"
   game.place_computer_ships(enemy_cruiser, enemy_submarine)
   layout
   puts game.player_board
   game.place_player_ship_1(submarine)
   puts game.player_board
   sleep(2)
   game.place_player_ship_2(cruiser)
   puts game.player_board
  game.game_on
 elsif input == "q"
   thanks_message
   break
  end
end
