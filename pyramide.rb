
# bonjour
# je me suis amusé un peu

puts "------------BONJOUR--------------"


# etages _______________________________________
def askHighness
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

# parametres de pyramide _________________________
def scale (floor)
  return 1+2*(floor-1)
end

$styles = {}

# escalier -----------------------------------
$styles["escalier"] = -> (stages){
  for i in 1..stages
    puts " "*(stages-i)+"#"*i
  end
}

# pyramide moche ------------------------------
$styles["moche"] = -> (stages){
  base = scale stages
  for i in 1..stages
    body = scale i
    spacing = base/2 - body/2 # voir *
    puts " "*spacing+"#"*body
  end
}

# pyramide stylée ------------------------------
$styles["stylée"] = -> (stages){
  base = scale stages
  bonus = "\u2600"
  puts " "*(base*4/5)+bonus.encode('utf-8')
  for i in 1..stages
    body = scale i
    spacingIn = body/2 # voir *
    spacingOut = base/2 - spacingIn #voir *
    puts " "*spacingOut+
      "/"+
      "/"*(spacingIn)+
      "|"+
      " "*(spacingIn)+
      "\\";
  end
}


# choix du style _________________________________
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

def buildPyramid (command_nb)
  highness = askHighness
  style = askStyle
  #do the drawing
  $styles[style].(highness)
  puts "et voila la #{command_nb}e commande!"
end

# confirmation _______________________________________

def ask (command_nb)
  puts "vous voulez contruire #{
    command_nb==0 ?
      "quelquechose" :
      "autre chose"
    } ?";
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

puts "Bienvenue chez pyramides & escaliers"

command_nb = 0

response = "go"
until response == "STOP"
  puts ""
  response = ask(command_nb)
  puts ""
  if response == "oui"
    command_nb += 1
    buildPyramid(command_nb)
  else
    response = "STOP" #juste au cas ou
  end
end

puts "----------------------------------------
on a construit #{command_nb} pyramides,
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
