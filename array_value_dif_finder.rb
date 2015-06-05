#function that looks at given array and determines
#optimal buy/sell date for greatest possible gain
#in value
#
#You may pass an array as an argument while runnign script
#example: ruby array_value_dif_finder.rb [1,2,51,5]
#
#If no array is passed it will run on the sample array
#
#To do: add a prompt for an array if none given

def picker(arrayin)
  purchase_date = 0
  sell_date = 0
  max_dif = 0
  x = 0

  while x<arrayin.size do 
    y = x + 1
    while y < arrayin.size do
      if arrayin[y] - arrayin[x] > max_dif
        purchase_date = x
        sell_date = y
        max_dif = arrayin[y] - arrayin[x]
      end
      y+=1
    end
    x+=1
  end
  puts "Calculating the buy and sell date for optimal price gain on:"
  puts "Array given: #{arrayin}"
  puts "Optimal purchase date: #{purchase_date+1}, and sell date: #{sell_date+1}"
  puts "Profit over given span: #{max_dif}"
end

#sample call
if ARGV[0]
  input = ARGV.first.scan(/\d/).map(&:to_i)
  picker(input)
  abort
end

picker([17,3,6,9,15,8,6,1,10])

