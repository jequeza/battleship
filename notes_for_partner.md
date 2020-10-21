##Creation Checklist

-Create Runner.rb
  -Runner responsible for:
    -Starting the game.
    -Looping through turns.
    -Ending game / Starting new game.
-Create Player.rb
  -Player class responsible for:
    -creating Player_1 board instance.
    -Placing player_1 ships.
    -input for firing on enemy ships.
-Create Computer.rb
  -Computer class responsible for:
    -Creating Computer board instance.
    -Placing Computer ships.
    -input for firing on enemy ships.
-Create text.rb
  -text class/module responsible for:
    -storing all text messages associated with the game.
-Create turns.rb / round.rb
  -turns class responsible for:
    -Displaying the boards.
    -Take player chosen coordinate and Fires!
    -Take Computer generated coordinate and Fires!
    -Report player's shot.
    -Report computers shot.
    -Check if game over?



##Battleship Runner

- Loop do statement for running game

-Computer Class
  -create computer board
  -place computer ships
    -Sample method for random placement, selection from array of options
  -validate placement

-Player Class
  -create player_1 board
  -place player_1 ships
  -validate placement
    -if invalid, prompt placement again.  "until loop"

-Start game
  -Start timer

-The Turn
  -Player turn/computer turn
    -Display the boards
    -play/choose coordinate to fire_upon
    -computer generates coordinate to fire_upon
    -report player's shot
    -report computer's shot
    -End turn
    -check to see if Game Over

  -End game, if Game over == true
  - Print game results.

  - New game/quit
-end loop

## Notes for functionality checklist

-Main Menu
  -User shown main menu where they can play or quit.

-Setup
  -Computer can place ships randomly in valid locations.
    -Utilize .sample and .delete Array methods
  -User can enter valid sequences to place both ships.
    -strict input for entering valid coordinates per ship
    -Invalid placement prompts new input.

-Turn
  -User board shows Hits, Misses, Sunken Ships, & Users ship locations "S".
  -Computer board shows Hits, Misses, and Sunken Ships.
  -Computer random shot - not same spot twice.
  -Player_1 Fires!
  -Invalid coordinates prompts re-enter.
  -Both Comp & player shots are reported.
  -board updated after turn/next turn.

-End Game
  -Game ends when all users/computers ships are sunk
  -game reports who won.
  -game returns user to main menu.
