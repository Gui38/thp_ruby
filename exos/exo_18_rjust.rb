
email_nb = 50

array = []

for i in 1..email_nb
  array << "jean.dupont.#{i.to_s.rjust(2,"0")}@email.fr"
  #content d'être tombé sur rjust
  #j'avais pas envie de faire un truc moins propre

  #ruby c'est vraiment cool

  #donc :
  #ajoute a l'array
  #un texte qui commence par jean.dupont.
  #suivi du nombre transformé en texte
  #et si ce nombre ne fait qu'un chiffre
  #ajoute un 0 au début
  #puis @email.fr
end

puts array
