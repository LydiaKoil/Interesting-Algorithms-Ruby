# frozen_string_literal=true

def multiple(num, length)
  arr = Array.new(length)
  arr.each_with_index do |_, ind|
    arr[ind] = num * (ind + 1)
  end
  puts arr
end
