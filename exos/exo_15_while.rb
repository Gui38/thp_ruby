
print "tu est née en >>"
birth = gets.chomp.to_i
date = birth
stop = 2018

while date < stop
  puts "en #{date} tu as eu #{date-birth} ans"
  date += 1
end
