# frozen_string_literal: true

# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    chars.each_with_index.map do |item, index|
      item if index.even?
    end.join
  end
end
