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
string = gets.chomp

puts "How much would you like it shifted by?"
shift = gets.chomp.to_i

machine = Ceaser.new(shift)

puts "Would you like it decrypted or encrypted?"
todo = gets.chomp

def mainfunct
  if (todo=="encrypted"||todo=="encrypt")
    puts machine.encrypt(string)  
  else if (todo=="decrypted"||todo=="decrypt")
    puts machine.decrypt(string)
  else
    puts "Please say decrypt or encrypt."
 end 
end

mainfunct

puts "sentinel"
end
