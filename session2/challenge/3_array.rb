# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
def every_other_char

  new = ''

  if self.empty?
    return new
  end
 
    self.length.times do |x|
        if x.even?
            new << self[x]
        end
    end
  return new

end  



end
