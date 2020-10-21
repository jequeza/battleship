class Text

  def initialize
  end

  def start
    p "Welcome to BATTLESHIP"
  end

  def play
    p "Enter p to play or q to quit!"
  end

  def take_aim
    sleep(1)
    p "Choose a coordinate from the enemy board to fire upon!"
  end

  def comp_aim
    sleep(1)
    p "Zeroing in on your Cruiser location!"
  end

  def overlap
    p "---ERROR---   ---ERROR---"
    p "Please choose different coordinates!"
  end

  def invalid
    sleep(1)
    p "Please choose a valid Coordinate"
  end

  def layout
    p "I have laid out my ships on the grid."
    p "You now need to place your two ships."
    sleep(1)
    p "The Cruiser is three units long and"
    p "the Submarine is two units long."
    sleep(2)
    p "Make sure you dont overlap ships!"
    sleep(1)
  end

  def cruiser
    p "Lets place your Cruiser!"
  end

  def sub
    p "Lets place your Submarine!"
  end

  def co1
    p "Enter First Coordinate"
  end

  def co2
    p "Enter Second Coordinate"
  end

  def co3
    p "Enter Third Coordinate"
  end

  def set
    p "Set and ready to Fire!"
  end

  def fire
    p ["Fire!", "Release the Torpedo!", "Bombs Away!", "Pay the iron price!", "Winter is coming."].sample
  end

  def congrats
    p "------- WINNER! -------"
    p "--YOU SANK MY SHIPS!--"
    p "---NEW CHAMPION IN THE ARENA---"
  end

  def winner
    puts """##      ## #### ##    ## ##    ## ######## ########
##  ##  ##  ##  ###   ## ###   ## ##       ##     ##
##  ##  ##  ##  ####  ## ####  ## ##       ##     ##
##  ##  ##  ##  ## ## ## ## ## ## ######   ########
##  ##  ##  ##  ##  #### ##  #### ##       ##   ##
##  ##  ##  ##  ##   ### ##   ### ##       ##    ##
 ###  ###  #### ##    ## ##    ## ######## ##     ##  """
  end

  def nice_try
    puts "  ┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼"
    puts "  ███▀▀▀██┼███▀▀▀███┼███▀█▄█▀███┼██▀▀▀"
    puts "  ██┼┼┼┼██┼██┼┼┼┼┼██┼██┼┼┼█┼┼┼██┼██┼┼┼"
    puts "  ██┼┼┼▄▄▄┼██▄▄▄▄▄██┼██┼┼┼▀┼┼┼██┼██▀▀▀"
    puts "  ██┼┼┼┼██┼██┼┼┼┼┼██┼██┼┼┼┼┼┼┼██┼██┼┼┼"
    puts "  ███▄▄▄██┼██┼┼┼┼┼██┼██┼┼┼┼┼┼┼██┼██▄▄▄"
    puts "  ┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼"
    puts "  ███▀▀▀███┼▀███┼┼██▀┼██▀▀▀┼██▀▀▀▀██▄┼"
    puts "  ██┼┼┼┼┼██┼┼┼██┼┼██┼┼██┼┼┼┼██┼┼┼┼┼██┼"
    puts "  ██┼┼┼┼┼██┼┼┼██┼┼██┼┼██▀▀▀┼██▄▄▄▄▄▀▀┼"
    puts "  ██┼┼┼┼┼██┼┼┼██┼┼█▀┼┼██┼┼┼┼██┼┼┼┼┼██┼"
    puts "  ███▄▄▄███┼┼┼─▀█▀┼┼─┼██▄▄▄┼██┼┼┼┼┼██▄"
    puts "  ┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼██┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼██┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼████▄┼┼┼▄▄▄▄▄▄▄┼┼┼▄████┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼┼▀▀█▄█████████▄█▀▀┼┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼┼┼┼█████████████┼┼┼┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼┼┼┼██▀▀▀███▀▀▀██┼┼┼┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼┼┼┼██┼┼┼███┼┼┼██┼┼┼┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼┼┼┼█████▀▄▀█████┼┼┼┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼┼┼┼┼███████████┼┼┼┼┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼▄▄▄██┼┼█▀█▀█┼┼██▄▄▄┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼▀▀██┼┼┼┼┼┼┼┼┼┼┼██▀▀┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼┼┼▀▀┼┼┼┼┼┼┼┼┼┼┼▀▀┼┼┼┼┼┼┼┼┼┼┼"
    puts "  ┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼"
  end

  def thanks_message
   p "Come back when you're ready for a challenge."
  end
end
