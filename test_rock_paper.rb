# frozen_string_literal : true

require 'minitest/autorun'
require_relative '03_rock_paper'

# test class
class RockPaperTest < MiniTest::Test
  def test_player_one
    assert_equal 'Abigail', game('Abigail', 'Benson', [ ['R', 'P'], [ 'R', 'S'], [ 'S', 'P']])
  end

  def test_player_two
    assert_equal 'Benson', game('Abigail', 'Benson', [ ['R', 'R'], [ 'S', 'R'], [ 'S', 'S']])
  end

  def test_tie
    assert_equal 'Tie', game('Abigail', 'Benson', [ ['R', 'R'], [ 'S', 'R'], [ 'P', 'R']])
  end
end
