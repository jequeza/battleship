require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/check'

class CheckTest < MiniTest::Test

  def test_it_exists
    check = Check.new(["A1", "A2", "A3"])

    assert_instance_of Check, check
    assert_equal  true, check.valid
  end

  def test_it_fails_with_2
    check = Check.new(["A1", "A3"])
    check1 = Check.new(["A1", "A4"])
    check2 = Check.new(["B2", "B4"])
    check3 = Check.new(["B1", "B3"])
    check4 = Check.new(["C1", "C4"])
    check5 = Check.new(["C1", "C3"])
    check6 = Check.new(["D1", "D4"])
    check7 = Check.new(["A1", "D1"])
    check8 = Check.new(["A1", "C1"])
    check9 = Check.new(["A2", "D2"])
    check10 = Check.new(["A3", "C3"])
    check11 = Check.new(["D2", "C4"])
    check12 = Check.new(["C2", "B4"])

    assert_equal false, check1.valid
    assert_equal false, check2.valid
    assert_equal false, check3.valid
    assert_equal false, check4.valid
    assert_equal false, check5.valid
    assert_equal false, check6.valid
    assert_equal false, check7.valid
    assert_equal false, check8.valid
    assert_equal false, check9.valid
    assert_equal false, check10.valid
    assert_equal false, check11.valid
    assert_equal false, check12.valid
  end


  def test_it_fails_with_3
    check = Check.new(["A1", "A2", "A3"])
    check1 = Check.new(["A1", "A3", "A4"])
    check2 = Check.new(["B1", "B2", "B4"])
    check3 = Check.new(["B1", "B3", "B4"])
    check4 = Check.new(["C1", "C2", "C4"])
    check5 = Check.new(["C1", "C3", "C4"])
    check6 = Check.new(["D1", "D2", "D4"])
    check7 = Check.new(["A1", "B1", "D1"])
    check8 = Check.new(["A1", "C1", "D1"])
    check9 = Check.new(["A2", "B2", "D2"])
    check10 = Check.new(["A3", "C3", "D3"])
    check11 = Check.new(["D1", "D2", "C4"])
    check12 = Check.new(["C1", "C2", "B4"])

    assert_equal false, check1.valid
    assert_equal false, check2.valid
    assert_equal false, check3.valid
    assert_equal false, check4.valid
    assert_equal false, check5.valid
    assert_equal false, check6.valid
    assert_equal false, check7.valid
    assert_equal false, check8.valid
    assert_equal false, check9.valid
    assert_equal false, check10.valid
    assert_equal false, check11.valid
    assert_equal false, check12.valid
  end

  def test_it_passes_with_2
    check = Check.new(["A1", "A2"])
    check1 = Check.new(["B2", "B3"])
    check2 = Check.new(["C2", "C3"])
    check3 = Check.new(["D1", "D2"])
    check4 = Check.new(["A2", "B2"])
    check5 = Check.new(["B1", "C1"])
    check6 = Check.new(["C2", "D2"])
    check7 = Check.new(["A4", "B4"])

    assert_equal true, check1.valid
    assert_equal true, check2.valid
    assert_equal true, check3.valid
    assert_equal true, check4.valid
    assert_equal true, check5.valid
    assert_equal true, check6.valid
    assert_equal true, check7.valid
  end

  def test_it_passes_with_3
    check = Check.new(["A1", "A2", "A3"])
    check1 = Check.new(["B1", "B2", "B3"])
    check2 = Check.new(["C1", "C2", "C3"])
    check3 = Check.new(["D1", "D2", "D3"])
    check4 = Check.new(["A2", "B2", "C2"])
    check5 = Check.new(["A1", "B1", "C1"])
    check6 = Check.new(["B2", "C2", "D2"])
    check7 = Check.new(["A4", "B4", "C4"])

    assert_equal true, check1.valid
    assert_equal true, check2.valid
    assert_equal true, check3.valid
    assert_equal true, check4.valid
    assert_equal true, check5.valid
    assert_equal true, check6.valid
    assert_equal true, check7.valid
  end







end
