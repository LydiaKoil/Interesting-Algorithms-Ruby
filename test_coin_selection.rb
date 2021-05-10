# frozen_string_literal: true

require 'minitest/autorun'
require_relative '19_coin_selection'

class SortByLengthTest < Minitest::Test
  def test_uneven_sized_array
    assert_equal 9, max(1, 2, 3, 4, 5)
  end

  def test_even_sized_array
    assert_equal 6, max(1, 2, 3, 4)
  end

end