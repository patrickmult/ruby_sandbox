def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party."
  puts "Find blanket. \n"
end

puts "Can pass nums to function direct:"
cheese_and_crackers(20,30)

puts "Or can use vars"

amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside"
cheese_and_crackers(10+20, 5+6)

puts "Can also combine vars and number inputs"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

