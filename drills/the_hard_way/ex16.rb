filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

def ui
  $stdin.gets.chomp
end

print "line 1: "
line1 = ui
print "line 2: "
line2 = ui
print "line 3: "
line3 = ui

puts "I'm going to write these to the file."

def tar(x,target)
  target.write(x)
end

tar("#{line1} \n#{line2} \n#{line3} \n",target)
#tar("\n",target)
#tar(line2,target)
#tar("\n",target)
#tar(line3,target)
#tar("\n",target)

puts "And finally, we close it."

target.close

