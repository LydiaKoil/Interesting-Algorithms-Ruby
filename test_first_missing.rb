# frozen_string_literal: true

require 'minitest/autorun'
require_relative '07_first_missing'

class SortByLengthTest < Minitest::Test
  def test_all_positive_input
    assert_equal 3, first_missing([0, 1, 2, 4, 6])
  end

  def test_all_negative_input
    assert_equal 1, first_missing([-1, -2, -3])
  end

  def test_with_duplicates
    assert_equal 3, first_missing([-1, 0, 1, 1, 1, 2, 2, 2])
  end

  def test_no_gaps_in_array
    assert_equal 6, first_missing([1, 2, 3, 4, 5])
  end
end
