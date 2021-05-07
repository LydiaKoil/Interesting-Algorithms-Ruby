# frozen_string_literal = true

require 'minitest/autorun'
require_relative '02_longest_streak'

# test class
class StreakTest < Minitest::Test
  def test_consecutive
    assert_equal 4, streak([{
                              date: "2019-09-17"
                            },
                            {
                              date: "2019-09-20"
                            },
                            {
                              date: "2019-09-25"
                            },
                            {
                              date: "2019-09-26"
                            },
                            {
                              date: "2019-09-27"
                            },
                            {
                              date: "2019-09-28"
                            }])
  end

  def test_max_consecutive
    assert_equal 4, streak([
                            {
                              date: "2019-09-17"
                            },
                            {
                              date: "2019-09-18"
                            },
                            {
                              date: "2019-09-25"
                            },
                            {
                              date: "2019-09-26"
                            },
                            {
                              date: "2019-09-27"
                            },
                            {
                              date: "2019-09-28"
                            }])
  end

  def test_last_date_not_consecutive
    assert_equal 3, streak([
                            {
                              date: "2019-09-17"
                            },
                            {
                              date: "2019-09-18"
                            },
                            {
                              date: "2019-09-25"
                            },
                            {
                              date: "2019-09-26"
                            },
                            {
                              date: "2019-09-27"
                            },
                            {
                              date: "2019-09-30"
                            }])
  end

  def test_last_date_no_consecutives
    assert_equal 1, streak([
                            {
                              date: "2019-09-17"
                            },
                            {
                              date: "2019-09-19"
                            },
                            {
                              date: "2019-09-21"
                            },
                            {
                              date: "2019-09-23"
                            },
                            {
                              date: "2019-09-25"
                            },
                            {
                              date: "2019-09-30"
                            }])
  end

  def test_empty_array
    assert_equal 0, streak([])
  end
end
