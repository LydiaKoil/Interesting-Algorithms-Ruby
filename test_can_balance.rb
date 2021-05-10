# frozen_string_literal: true

require 'minitest/autorun'
require_relative '06_can_balance'

#test class
class CanBalanceTest < Minitest::Test
  def test_true
    assert_equal true, canBalance?([1, 1, 1, 2, 1])
  end

  def test_false
    assert_equal false, canBalance?([2, 1, 1, 2, 1])
  end
end