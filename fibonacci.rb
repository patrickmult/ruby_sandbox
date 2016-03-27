y = ARGV.first.to_i
x = 0
z = 1
h = 1 
while h < y
  f = x + z
  x = z
  z = f
  h += 1
end
puts z
   
