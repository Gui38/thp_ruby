
# bonjour
# je me suis amusé un peu

puts "------------BONJOUR--------------"


# etages _______________________________________
#fonction qui demande le nombre d'étages
#tant qu'il n'a pas un nombre correct
#entre 3 et 25 car 2 ou 1 c'est nul
def askheight
  puts "combien d'étages la pyramide ?"

  floors = 0
  min = 3
  max = 25
  until floors.between?(min,max)
    print ">>"
    floors = gets.chomp.to_i
    if floors < min
      puts "il faut au moins #{min.to_s} étage#{min==1?"":"s"} voyons !"
    elsif floors > max
      puts "pas plus de #{max.to_s}, on est pas des esclaves !"
    else
      puts floors.to_s + " étage#{floors==1?"":"s"}, ça marche !"
    end
  end
  return floors
end

# styles de pyramide _________________________
# j'ai trois styles de pyramides
# chacun stocké dans une fonction différente

# mes petites habitudes de javascript :
# au lieu de faire un gros if elsif
# j'ai fait un hash et j'ai trouvé comment stocker
# mes fonctions dedans (c'était pas gagné)
# comme ca pour demander la bonne fonction
# je n'aurais plus qu'a faire
# $styles[nomDeLaBonneFonction].(argument)
$styles = {}

# escalier -----------------------------------
$styles["escalier"] = -> (stages){
  for i in 1..stages
    puts " "*(stages-i)+"#"*i
  end
}

# pyramide moche ------------------------------
$styles["moche"] = -> (stages){
  for i in 1..stages
    body = 2*i - 1
    spacing = stages - body/2
    puts " "*spacing+"#"*body
  end
}

# pyramide stylée ------------------------------
$styles["stylée"] = -> (stages){
  base = stages*2 + 1
  bonus = "\u2600"
  puts " "*(base*4/5)+bonus.encode('utf-8')
  #trouvé sur le net
  #apparemment sur ruby aujourd'hui
  #y'a plus besoin d'encoder, c'est utf-8 de base
  for i in 1..stages
    semibody = i -1
    sky = stages - semibody
    puts " "*sky+
      "/"+
      "/"*(semibody)+
      "|"+
      " "*(semibody)+
      "\\";
  end
}


# choix du style _________________________________
# fonction qui demande le style
# et qui redemande tant que ce n'est pas
# un style valide "escalier" "moche" ou "stylée"

def askStyle
  puts "\nj'ai des pyramides stylées,\ndes moches"+
    " et de bêtes escaliers,\nil vous faut quoi ?"

  style = nil
  while style == nil
    print ">>"
    desire = gets.chomp
    if ["stylée","moche","escalier"].include? desire
      style = desire
    else
      puts "je n'ai que \"stylée\" \"moche\" ou \"escalier\""
    end
  end
  return style
end

# construction ______________________________________
#fonction qui demande la hauteur,
#demande le style
#puis dessine la bonne pyramide
def buildPyramid (command_nb)
  height = askheight
  style = askStyle
  $styles[style].(height) #voila mon tour de magie avec le hash
  puts "et voila la #{command_nb}e commande!"
end

# confirmation _______________________________________
# fonction qui demande
# si on veut faire une pyramide
# et qui redemande tant que la reponse
# n'est pas "oui" ou "non"
def ask (command_nb)
  puts "vous voulez contruire #{
    command_nb==0 ?  #si c'est la premiere commande
      "quelquechose" : #on demande quelque chose
      "autre chose" #sinon on demande autre chose
    } ?"; #j'aime les ternaires =)
  stop = false
  while stop == false
    print ">>"
    response = gets.chomp
    if response == "oui"
      stop == true #juste au cas ou
      return "oui"
    elsif response == "non"
      stop == true #juste au cas ou
      return "STOP"
    else
      puts "pardon ? je n'ai pas compris ... (oui ou non)"
    end
  end
end


# enfin, le programme _______________________________
#j'assemble toutes mes fonctions

puts "Bienvenue chez pyramides & escaliers"

command_nb = 0 #pour compter les commandes

response = "oui"
while response == "oui" #tant qu'on veut faire des pyramides
  puts ""
  response = ask(command_nb)
  puts ""
  if response == "oui"
    command_nb += 1
    buildPyramid(command_nb)
  else
    response = "non" #juste au cas ou
    #je me mefie des whiles
  end
end

puts "----------------------------------------
on a construit #{command_nb} pyramide#{
  command_nb == 1 ?
    "" : # 1 pyramide
    "s"  # 0 ou 2 pyramides
},
à bientôt "+"\u2764";


__END__
**

* pour les divisions par deux là
je sais que la verité est plus complexe
mais bon ca marche très bien comme ça
les arrondis de ruby sont plus intelligents que moi
pourquoi chercher plus loin ???

** franchement le developpeur de ruby*** a pensé à tout...
ca existe en debut de ficher ça ?? ca serait pratique

*** je connaissait pas du tout ruby,
j'ai jamais vu un langage aussi fun
merci déjà pour ça
(mais je prefere node)
