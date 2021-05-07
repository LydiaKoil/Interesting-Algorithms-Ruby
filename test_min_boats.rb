# frozen_string_literal: true

require 'minitest/autorun'
require_relative '14_min_boats'
# test class
class MinBoatTest < Minitest::Test
  def test_one_boat_needed
    assert_equal 1, min_boats([70, 70], 200)
  end

  def test_over_capacity_under_weight
    assert_equal 2, min_boats([70, 50, 70], 200)
  end

  def test_over_weight_under_capacity
    assert_equal 2, min_boats([200, 200], 200)
  end

  def test_even_number_of_people
    assert_equal 3, min_boats([100, 200, 150, 80], 200)
  end

  def test_odd_number_of_people
    assert_equal 3, min_boats([100, 80, 30, 150, 80], 200)
  end
end
