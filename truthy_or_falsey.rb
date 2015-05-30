#little script to inspect some of the ruby objects for boolean "truthyness"
def truthy_or_falsey value

  if value
    puts "#{value.inspect} is truthy"
  else
    puts "#{value.inspect} is falsey"
  end
end

[true, false, Object, 0, 1, nil, true, false, "", [1,2,3], {}].each do |a|
  truthy_or_falsey(a)
end

