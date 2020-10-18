module Text

  def start
    p "Welcome to BATTLESHIP"
  end

  def play
    p "Enter p to play or q to quit!"
  end

  def overlap
    p "---ERROR---   ---ERROR---"
    p "Please choose different coordinates!"
  end

  def layout
    p "I have laid out my ships on the grid."
    p "You now need to lay out your two ships."
    p "The Cruiser is three units long and"
    p "the Submarine is two units long."
    p "Make sure you dont overlap ship!"
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
    p "Ship Set and ready to Fire!"
  end

  def fire
    p ["Fire!", "Release the Torpedo!", "Bombs Away!"].sample
  end

  def timer
    p "Game run time:"
  end
end
