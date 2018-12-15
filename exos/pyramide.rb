
# c'est plus un escalier qu'une pyramide ça

stages = 0
puts "Salut\ncombien d'étages la pyramide ?"

until stages.between?(1,25) #voir exercice 20
  print ">>"
  stages = gets.chomp.to_i
  if stages < 1
    puts "il faut au moins un étage voyons !"
  elsif stages > 25
    puts "pas plus de 25, on est pas des esclaves !"
  else
    puts stages.to_s + " étage#{stages==1?"":"s"}, ça marche !"
  end
end

for i in 1..stages #pour chaque etage i
  puts " "*(stages-i)+"#"*i
  # ecris autant d'espace que le max moins l'étage
  # puis autant de dièse que l'étage
end
