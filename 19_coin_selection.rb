# frozen_string_literal: true

def max(array)
  if array[0] > array[-1]
    max = array.shift
  else
    max = array.pop
  end

  n = 1
  until array.empty?
    if array[0] > array[-1]
      big = array.shift
    else
      big = array.pop
    end

    max += big if (n % 2).zero?
    n += 1
  end
end

max([1, 10, 100, 2, 7, 18])