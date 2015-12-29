# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
class BeerSong

    attr_accessor :number

  def initialize(number)
      @number = number
      self.number = number
      @nums = {
      0=> "zero",1=> "one",2=> "two",3=> "three",4=> "four",5=> "five",6=> "six",7=> "seven",8=> "eight",9=> "nine",10=> "ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen",18=>"eighteen",19=>"nineteen",20=> "twenty",30=> "thirty",40=> "forty",50=> "fifty",60=> "sixty",70=> "seventy",80=> "eighty",90=> "ninety"}

       if @number <= 0 ; @number = 0 ; end
       
       if @number > 99 ; @number = 99 ; end
       
  end

  def print_song
      if @number.zero?
          String.new
      end
      
   while @number > 0  
      var = @number.to_s.split(//)
      
      new = []
      new1 = []
           
       if var.count == 1
           @nums.each {|x,y| new << y.capitalize  if x.to_i - var[0].to_i == 0} ; var1 = new*" "
           @nums.each {|x,y| new1 << y.capitalize  if x.to_i + 1 - var[0].to_i == 0} ; var2 = new1*" "
           plural = "bottles"
           plurals = "bottles"
           if var[0].to_i == 1
               plural = "bottle"
           elsif var[0].to_i == 2 
               plurals = "bottle"
           end
           puts "#{var1} #{plural} of beer on the wall,\n#{var1} #{plural} of beer,\nTake one down, pass it around,\n#{var2} #{plurals} of beer on the wall."
           @number -=1

       elsif var.count == 2 && var[0] == "1"
           @nums.each {|x,y| new << y.capitalize if x.to_i - var[1].to_i == 10} ; var1 = new*" "
           @nums.each {|x,y| new1 << y.capitalize  if x.to_i + 1 - var[1].to_i == 10} ; var2 = new1*" "
           puts "#{var1} bottles of beer on the wall,\n#{var1} bottles of beer,\nTake one down, pass it around,\n#{var2} bottles of beer on the wall."
           @number -=1

       elsif var.count == 2 && var[1] == "0"
           @nums.each {|x,y| new << y.capitalize if x.to_i == (var[0] + var[1]).to_i} ; var1 = new*" "
           var3 = (var[0] + var[1]).to_i - 1
           if var3 >=20 
           var3 = var3.to_s.split(//)
           check1 = var3[0] + "0"
           @nums.each {|x,y| new1 << y.capitalize+"-" if x.to_i == check1.to_i} ; @nums.each {|x,y| new1 << y if x.to_i - var3[1].to_i == 0} ; var2 = new1*" "
           else
               var2 = "Nineteen"
           end
 
           puts "#{var1.delete(" ")} bottles of beer on the wall,\n#{var1.delete(" ")} bottles of beer,\nTake one down, pass it around,\n#{var2.delete(" ")} bottles of beer on the wall."
           @number -=1

       elsif var.count == 2 && var[1].to_i > 0 && var[1].to_i <= 9
           check = var[0] + "0"
           @nums.each {|x,y| new << y.capitalize+"-" if x.to_i == check.to_i} ; @nums.each {|x,y| new << y if x.to_i - var[1].to_i == 0} ; var1 = new*" "
           check1 = var[0] + "0"
           @nums.each {|x,y| new1 << y.capitalize+"-" if x.to_i == check1.to_i} ; @nums.each {|x,y| new1 << y if x.to_i + 1 - var[1].to_i == 0}
 
            if new1.include? "zero" ; var2 = new1[0].to_s.gsub!(/-/, '') ; end
            if new1.include? "zero" ; var2 = new1.delete_at(1); end
           
           var2 = new1*" "
           
           puts "#{var1.delete(" ")} bottles of beer on the wall,\n#{var1.delete(" ")} bottles of beer,\nTake one down, pass it around,\n#{var2.delete(" ")} bottles of beer on the wall."
           @number -=1

       end
   end
   
   end


end
