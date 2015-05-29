#Ceaser cipher in Ruby. Run in terminal.
class Ceaser
  def initialize(alphabet = ('a'..'z').to_a.join)
    @shiftvalue=nil
    @realshift=nil
    @encrypt=nil
    @decrypt=alphabet
    @somestring=nil
    @userinput=nil
    @shift=nil
    @alphabet=alphabet
  end

  def encrypt(string)
    string.tr(@decrypt, @encrypt)
  end

  def decrypt(string)
    string.tr(@encrypt, @decrypt)
  end

  def inputsprompt
    puts "Please type string to be encrypted or decrypted"
    @somestring = gets.chomp.to_s

    puts "How much would you like it shifted by?"
    @shiftvalue = gets.chomp.to_i

    puts "Would you like it decrypted or encrypted?"
    @userinput = gets.chomp.to_s

    puts "Your string is #{@somestring}"
    puts "Your shift is #{@shift}"
    puts "Your output choice is #{@userinput}"

    @realshift = @shiftvalue % @alphabet.size
    @encrypt = @alphabet[@realshift..-1]+@alphabet[0...@realshift]
    @decrypt = @alphabet
  end

  def main
    case @userinput
    when "encrypted","encrypt"
        puts "Your encrypted string is:  #{self.encrypt(@somestring)}"
    when "decrypted","decrypt"
        puts "Your decrypted string is: #{self.decrypt(@somestring)}"
    else
        puts "Please say decrypt or encrypt."
    end 
  end 
end

machine = Ceaser.new
machine.inputsprompt
machine.main

puts "Sentinel"

