def substringcounter(string,dictionary)
  sub_count = Hash.new 0

  dictionary.each do |x|
    if string.include? x
      sub_count[x] += 1
    end
  end

  return sub_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substringcounter("Watch out I think we are going down",dictionary)

