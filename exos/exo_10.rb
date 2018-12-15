
#demande annee de naissance
print "annee de naissance >>"
birthdate = gets.chomp

age = 2017 - birthdate.to_i #convertis en chiffre et soustrait

puts "tu avais #{age} ans en 2017" #affiche le resultat
