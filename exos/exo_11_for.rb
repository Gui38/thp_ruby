

print "kwaaak que dois-je repeter ? >>"
parrot_song = gets.chomp

print "kwaaak combien dois-je repeter ? >>"
parrot_motivation = gets.chomp.to_i

for count in 1..parrot_motivation #pour chaque count de 1 à parrot motivation
  puts count.to_s+": "+parrot_song  #affiche le count et la chanson
end
