
email_nb = 50

array = []

for i in 1..email_nb
  array << "jean.dupont.#{i.to_s.rjust(2,"0")}@email.fr"
end

evens = []
for email in array
  if email.match(/[a-z\._]+\d[02468]@email.fr/)
    #si l'email correspond a la regex qui dit
    #je veux des petites lettres et des points 
    #(et des _ car au debut je m'etais trompé)
    #[a-z\._]+
    #suivis d'un chiffre \d
    #suivi d'un chiffre pair [02468]
    #suivi de @email.fr
    evens << email #si l'email est pair, je le prends
  end
end

puts evens
