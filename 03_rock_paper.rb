# frozen_string_literal: true

def game(player1, player2, array)
  hash = {
    ['R', 'P'] => [0, 1],
    ['S', 'R'] => [0, 1],
    ['P', 'S'] => [0, 1],
    ['P', 'R'] => [1, 0],
    ['R', 'S'] => [1, 0],
    ['S', 'P'] => [1, 0]
  }

  p1 = 0
  p2 = 0
  array.each do |n|
    res = hash[n]
    next if res.nil?

    p1 += res[0]
    p2 += res[1]
  end

  return player1 if p1 > p2

  return player2 if p2 > p1

  'Tie'
end

print game(1, 2, [ ["R", "R"], ["S", "S"]])
