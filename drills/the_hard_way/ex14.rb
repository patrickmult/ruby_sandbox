user_name = ARGV.first
prompt = '> '
def ui 
  $stdin.gets.chomp
end

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? ", prompt
likes = ui

puts "Where do you live #{user_name}? ", prompt
lives = ui 

puts "What kind of computer do you have? ", prompt
computer = ui

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""

