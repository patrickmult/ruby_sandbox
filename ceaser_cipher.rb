class Ceaser
  def initialize(shiftvalue,alphabet = ('a'..'z').to_a.join)
    realshift = shiftvalue % alphabet.size
    @encrypt = alphabet[realshift..-1]+alphabet[0...realshift]
    @decrypt = alphabet
  end

  def encrypt(string)
    string.tr(@decrypt, @encrypt)
  end

  def decrypt(string)
    string.tr(@encrypt, @decrypt)
  end
end


puts "What string would you like decrypted?"
somestring = gets.chomp.to_s

puts "How much would you like it shifted by?"
shift = gets.chomp.to_i

machine = Ceaser.new(shift)

puts "Would you like it decrypted or encrypted?"
userinput = gets.chomp.to_s

puts "Your string is #{somestring}"
puts "Your shift is #{shift}"
puts "Your output choice is #{userinput}"

case userinput
  when "encrypted","encrypt"
    puts "Your encrypted string is:  #{machine.encrypt(somestring)}"
  when "decrypted","decrypt"
    puts "Your decrypted string is: #{machine.decrypt(somestring)}"
  else
    puts "Please say decrypt or encrypt."
  end 

#def main(input,string)
#  if (input=="encrypted"||input=="encrypt")
#    puts "Your encrypted string is:  #{machine.encrypt(string)}"
#  else if (input=="decrypted"||input=="decrypt")
#    puts machine.decrypt(string)
#  else
#    puts "Please say decrypt or encrypt."
#  end 
#end
#main("encrypted","slimestring")
 
puts "sentinel"



