for i in (1..10)
  line = ""
  for x in (1..10)
    line += "#{i*x}\t"
  end

  puts line
end

