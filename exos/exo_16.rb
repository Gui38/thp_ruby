
print "tu est née en >>"
birth = gets.chomp.to_i
date = birth
today = 2018

while date < today
  puts "il y a #{today-date} ans tu as eu #{date-birth} ans"
  date += 1
end
