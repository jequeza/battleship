require './lib/board'

class Check
  attr_reader :coordinates,
              :valid

  def initialize(coordinates)
    @coordinates = coordinates
    @valid = split
  end

  def split
    if coordinates.length == 2
      check_2
    elsif coordinates.length == 3
      check_3
    end
  end

  def ord_let
    coordinates.map do |coordinate|
      coordinate[0].ord
    end
  end

  def ord_num
    coordinates.map do |coordinate|
      coordinate[1].ord
    end
  end

  def ordinals
    coordinates.map do |coordinate|
      coordinate[0].ord + coordinate[1].ord
    end
  end

  def check_2
    if ord_num[1] - ord_num[0] == 1 && ord_let[1] - ord_let[0] == 0
      ordinals[1] - ordinals[0] == 1
    elsif ord_num[1] - ord_num[0] == 0 && ord_let[1] - ord_let[0] == 1
      ordinals[1] - ordinals[0] == 1
    else
      false
    end
  end

  def check_3
    if (ord_num.sum.to_f / ord_num.length.to_f).round(1) == ord_num[1] || (ord_let.sum.to_f / ord_let.length.to_f).round(1) == ord_let[1]
      ordinals[2] - ordinals[1] == 1 && ordinals[1] - ordinals[0] == 1
    else
      false
    end
  end
end
