
print "tu est née en >>"
birth = gets.chomp.to_i
date = birth
today = 2018

while date < today #tant que date inferieure a today
  puts "il y a #{today-date} ans tu as eu #{date-birth} ans"
  #affiche un joli calcul
  date += 1 #ajoute une année
end
