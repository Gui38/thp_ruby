
print "tu est née en >>"
birth = gets.chomp.to_i
date = birth
today = 2018

while date < today
  if today-date == date-birth
    puts "il y a #{today-date} ans tu as eu la moitié de ton age d'ajourd'hui"
  else
    puts "il y a #{today-date} ans tu as eu #{date-birth} ans"
  end
  date += 1
end
