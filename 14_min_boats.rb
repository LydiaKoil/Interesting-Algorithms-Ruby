# frozen_string_literal: true

def min_boats(array, max)
  array.sort!
  boats = 0
  until array.empty?
    if array.size == 1
      boats += 1
      array.pop
      next
    end
    if array[0] + array[-1] <= 200
      array.pop
      array.shift
    else
      array[0] > array[-1] ? array.shift : array.pop
    end
    boats += 1
  end
  boats
end

puts min_boats([80, 100, 150, 200], 200)