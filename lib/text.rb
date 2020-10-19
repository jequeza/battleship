module Text

  def start
    p "Welcome to BATTLESHIP"
  end

  def play
    p "Enter p to play or q to quit!"

  end

  def take_aim
    p "Choose a coordinate from the enemy board to fire upon!"
  end

  def comp_aim
    p "Zeroing in on your Cruiser location!"
  end

  def overlap
    p "---ERROR---   ---ERROR---"
    p "Please choose different coordinates!"
  end

  def layout
    p "I have laid out my ships on the grid."
    p "You now need to place your two ships."
    sleep(3)
    p "The Cruiser is three units long and"
    p "the Submarine is two units long."
    sleep(4)
    p "Make sure you dont overlap ships!"
    sleep(3)
  end

  def cruiser
    puts "Lets place your Cruiser!"
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
    "Set and ready to Fire!"
  end

  def fire
    p ["Fire!", "Release the Torpedo!", "Bombs Away!"].sample
  end

  def timer
    p "Game run time:"
  end

  def congrats
    p "------WINNER!!!!--------"
  end

  def nice_try
    p "BETTER LUCK NEXT TIME!"
  end

  def thanks_message
   p "Come back when you're ready for a challenge."
  end
end
