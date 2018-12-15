
print "tu est née en >>"
birth = gets.chomp.to_i
date = birth
stop = 2018

while date < stop  #tant que date inférieur a stop
  puts "en #{date} tu as eu #{date-birth} ans" #affiche un joli texte
  date += 1 #ajoute une année
end
