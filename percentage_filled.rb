# frozen_string_literal: true

def percentage_filled(array)
  array = array.join
  arr = array.split('')

  spaces = 0.0
  filled = 0.0
  arr.each do |x|
    spaces += 1 if x == ' '
    filled += 1 if x == 'o'
  end
  percentage = (filled / (spaces + filled)) * 100

  "#{percentage.round}%"
end
