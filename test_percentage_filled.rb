# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'percentage_filled'

# test class
class PercentageFilledTest < Minitest::Test
  def test_whole_num_answer
    assert_equal '25%', percentage_filled(['####', '#  #', '#o #', '####'])
    assert_equal '60%', percentage_filled(['#######', '#o oo #', '#######'])
  end

  def test_rounded_answer
    assert_equal '31%', percentage_filled(['######', '#ooo #', '#oo  #', '#    #', '#    #', '######'])
  end
end
