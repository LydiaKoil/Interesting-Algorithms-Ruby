# frozen_string_literal: true

def game(number)
  operators = ['+', '-', '*', '/']
  array = operators.repeated_permutation(3).to_a
  numbers = number.permutation.to_a
  numbers.each do |num|
    array.each do |ops|
      ans = num[0]
      ops.each_with_index do |op, ind|
        next if ans > 24

        case op
        when '+'
          ans += num[ind + 1]
        when '-'
          ans -= num[ind + 1]
        when '*'
          ans *= num[ind + 1]
        when '/'
          ans /= num[ind + 1]
        end
      end

      return true if ans == 24
    end
  end
  false
end

puts game( [4, 6, 6, 8])

# puts 5 - 7 * 2 * 8