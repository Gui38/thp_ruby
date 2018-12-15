
stages = 0
puts "Salut\ncombien d'étages la pyramide ?"

until stages.between?(1,25) #jusqu'a ce que j'ai un nombre entre 1 et 25
  print ">>"
  stages = gets.chomp.to_i #je demande un nombre
  #(heureusement que to_i transforme en 0 les textes non conformes !)
  if stages < 1 #s'il est trop petit
    puts "il faut au moins un étage voyons !"
  elsif stages > 25 #s'il est trop grand
    puts "pas plus de 25, on est pas des esclaves !"
  else #si c'est bon
    puts stages.to_s + " étage#{stages==1?"":"s"}, ça marche !"
  end
end

for i in 1..stages #de 1 a mon nombre d'étages
  puts "#"*i #ecrit autant de dièse que l'étage
end
