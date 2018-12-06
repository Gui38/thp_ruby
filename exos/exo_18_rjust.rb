
email_nb = 50

array = []

for i in 1..email_nb
  array << "jean.dupont.#{i.to_s.rjust(2,"0")}@email.fr"
end

puts array
