# frozen_string_literal = true

require 'date'

def streak(array)
  return 0 if array.empty?
  
  max = 0
  current_count = 0
  array.each_with_index do |n, ind|
    next if ind == array.size - 1

    curr_date = Date.parse(n[:date])
    next_date = Date.parse(array[ind + 1][:date])
    days_between = (next_date - curr_date).to_i.abs
    current_count += 1 if days_between == 1

    if days_between != 1 || ind == array.size - 2
      max = current_count if current_count > max
      current_count = 0
    end
  end
  max += 1
  max
end

streak([
  {
    date: "2019-09-18"
  },
  {
    date: "2019-09-19"
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
  }

])