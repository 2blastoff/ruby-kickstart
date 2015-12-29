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
  else
  
  listing = Hash.new
  
  var = self.split(//)
  
  var.each_with_index {|x,y| listing[x] = y}
  
  listing.each {|x,y| new << x if y.even?}
  return new

end
end
end
