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

  def test_full_filled
    assert_equal '100%', percentage_filled(['######', '#oooo#', '#oooo#', '#oooo#', '#oooo#', '######'])
  end

  def test_empty
    assert_equal '0%', percentage_filled(['######', '#     #', '#     #', '#     #', '#     #', '######'])
  end
end
