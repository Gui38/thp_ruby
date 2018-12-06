
print "donne un nombre >>"
number = gets.chomp.to_i
stop = 0

until number < stop
  puts number
  number -= 1
end
