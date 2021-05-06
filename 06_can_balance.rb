# frozen_string_literal : true

def balance(array)
  array_sum = array.inject(0) {|sum, x| sum + x }
  sum = 0

  array.each_with_index do |n, ind|
    sum += n
    return true if sum == array_sum - sum
  end

  false
end

a =[10, 10]

puts balance(a)