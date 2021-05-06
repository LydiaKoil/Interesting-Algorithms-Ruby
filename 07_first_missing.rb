# frozen_string_literal: true

def first_missing(array)
  array.sort!
  num = 1
  array.each_with_index do |n, ind|
    next if n <= 0
    return num if n != num

    num += 1 if array[ind + 1] != n
  end

  num
end

puts first_missing([-5, -3, 0, 2, 2, 2, 2, 2, 2, 3, 4, 4, 5])