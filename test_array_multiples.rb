# frozen_string_literal = true

require 'minitest/autorun'
require_relative '04_array_of_multiples'

# test class
class ArrayOfMultiplesTest < MiniTest::Test
  def test_array_length_one
    assert_equal [7], multiple(7, 1)
  end

  def test_many_element_array
    assert_equal [7, 14, 21, 28, 35], multiple(7, 5)
    assert_equal [12, 24, 36, 48, 60, 72, 84, 96, 108, 120], multiple(12, 10)
    assert_equal [17, 34, 51, 68, 85, 102], multiple(17, 6)
  end
end