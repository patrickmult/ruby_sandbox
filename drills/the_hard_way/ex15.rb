#sets var filename to the first ARGV passed at runtime
filename = ARGV.first

#sets var text to use the open method on the filename var
txt = open(filename)

#puts the filename back to user
puts "Here's your file #{filename}:"
#prints the contents of the file by calling the read method
#on the txt var
print txt.read

#prompts for a new filename (or the same)
print "Type the filename again: "
#sets the file_again var to the user input
file_again = $stdin.gets.chomp

#sets var txt_again to call the open method /w var file_again
#as the parameter
txt_again = open(file_again)

#prints the output of the read method called on txt_again
print txt_again.read

