# frozen_string_literal: true

# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(input)
  result = false
  input.each_index do |i|
    result = input[i] == input[i + 1] && input[i + 1] == input[i + 2]
    break if result
  end
  result
end

# def got_three?(input)
#   input.each_cons(3) do |i, j, k|
#     return true if i == j && j == k
#   end
#   false
# end
