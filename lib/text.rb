module Text

  def start
    "Welcome to BATTLESHIP"
  end

  def play
    "Enter p to play or q to quit!"
  end

  def overlap
    "---ERROR---   ---ERROR---"
    "Please choose different coordinates!"
  end

  def layout
    "I have laid out my ships on the grid."
    "You now need to lay out your two ships."
    "The Cruiser is three units long and"
    "the Submarine is two units long."
    "Make sure you dont overlap ship!"
  end

  def cruiser
    "Lets place your Cruiser!"
  end

  def sub
    "Lets place your Submarine!"
  end

  def co1
    "Enter First Coordinate"
  end

  def co2
    "Enter Second Coordinate"
  end

  def co3
    "Enter Third Coordinate"
  end

  def set
    "Ship Set and ready to Fire!"
  end

  def fire
    ["Fire!", "Release the Torpedo!", "Bombs Away!"].sample
  end

  def timer
    "Game run time:"
  end




end
