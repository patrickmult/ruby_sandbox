def add(a,b)
  puts "Adding #{a} + #{b}"
  return a+b
end

def subtract(a,b)
  puts "Subtracting #{a} - #{b}"
  return a-b
end

def multiply(a,b)
  puts "Multiplying #{a} * #{b}"
  return a*b
end

def divide(a,b)
  puts "Dividing #{a} / #{b}"
  return a/b
end

puts "Some math /w functions"

age = add(30,5)
height = subtract(78,4)
weight = multiply(90,2)
volume = divide(100,2)

puts "Age #{age}, height #{height}, weight #{weight}, volume #{volume}"

puts "Here is a puzzle"

what = add(age, subtract(height, multiply(weight, divide(volume, 2))))
puts what.inspect
puts "That becomes: #{what}. Can you replicate that by hand?"

