require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')

class GameTest < MiniTest::Test

  def setup
    @game1 = Game.new('rock', 'scissors')
    @game2 = Game.new('scissors', 'rock')
    @game3 = Game.new('rock', 'paper')
    @game4 = Game.new('paper', 'rock')
    @game5 = Game.new('paper', 'scissors')
    @game6 = Game.new('scissors', 'paper')
    @game7 = Game.new('rock', 'rock')
    @game8 = Game.new('paper', 'paper')
    @game9 = Game.new('scissors', 'scissors')
    @game10 = Game.new('paper', 'banana')
  end


  def test_rock_wins__rock_first
    expected = "Rock wins"
    actual = @game1.playgame()
    assert_equal(expected, actual)
  end

  def test_rock_wins__scissors_first
    expected = "Rock wins"
    actual = @game2.playgame()
    assert_equal(expected, actual)
  end

  def test_paper_wins__rock_first
    expected = "Paper wins"
    actual = @game3.playgame()
    assert_equal(expected, actual)
  end

  def test_paper_wins__paper_first
    expected = "Paper wins"
    actual = @game4.playgame()
    assert_equal(expected, actual)
  end

  def test_scissors_wins__paper_first
    expected = "Scissors wins"
    actual = @game5.playgame()
    assert_equal(expected, actual)
  end

  def test_scissors_wins__scissors_first
    expected = "Scissors wins"
    actual = @game6.playgame()
    assert_equal(expected, actual)
  end

  def test_tie__rock
    expected = "It's a tie"
    actual = @game7.playgame()
    assert_equal(expected, actual)
  end

  def test_tie__paper
    expected = "It's a tie"
    actual = @game8.playgame()
    assert_equal(expected, actual)
  end

  def test_tie__scissors
    expected = "It's a tie"
    actual = @game9.playgame()
    assert_equal(expected, actual)
  end

  def test_unknown_input
    expected = "Invalid Input"
    actual = @game10.playgame()
    assert_equal(expected, actual)
  end

end
