# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"
def pirates_say_arrrrrrrrr(string)
   newy =""
   
   var = string.split(//)
  
    array = var
    array.each_with_index {|val, index| newy << array.at(index + 1).to_s if val.match(/["r","R"]/) }
   return newy

end

