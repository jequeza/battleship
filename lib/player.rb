require './lib/board.rb'


class Player
  attr_reader :board

  def initialize
    @board = Board.new('Player_1:')
    @possible = ["A1","A2","A3","A4","B1","B2","B3","B4","C1","C2","C3","C4","D1","D2","D3","D4"]

  end


  def place_player_ship_two(ship = submarine, input)
    if @board.valid_placement?(ship, input)
      coordinate = []
      coordinate << input
      coordinate.map do |coord|
        @board.place(ship, coord)
      end
    else
      false
    end
    # get input from player for placing ships. input gets validated
    # if pass, then ships are placed (*keep looping if not)
  end

  def place_player_ship_three(ship = cruiser, input)
    if @board.valid_placement?(ship, input)
      coordinate = []
      coordinate << input
      coordinate.map do |coord|
        @board.place(ship, coord)
      end
    else
      false
    end
    # get input from player for placing ships. input gets validated
    # if pass, then ships are placed (*keep looping if not)
  end

  def player_damage_phase
    # gets input from player on what coordinates to fire upon, validates,
    # stores every previous selection. Updates computer board display
  end


end
