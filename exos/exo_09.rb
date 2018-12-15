print "c'est quoi ton prenom ? >>"
user_name = gets.chomp #recupere le prenom
print "c'est quoi ton nom ? >>"
user_surname = gets.chomp #recupere le nom
puts "Bonjour, #{user_name+" "+user_surname}!" #affiche les deux dans une phrase
