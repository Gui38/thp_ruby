
print "donne un nombre >>"
number = gets.chomp.to_i
stop = 0

until number < stop #jusqu'a ce que number soit inférieur au stop
  puts number #ecris number
  number -= 1 #enleve lui un
end
