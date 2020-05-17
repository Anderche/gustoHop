
puts 'Cleaning database...'
User.destroy_all
Island.destroy_all
Producer.destroy_all

############################################################

puts 'Creating Admin...'
User.create!(email: "test@test.com", password: "123456")
User.create!(email: "anderskiss11@gmail.com", password: "Boxborough1!", admin: true)

############################################################

puts 'Creating islands...'
Island.create!(island_country: "Italy", island_name: "Ischia")
Island.create!(island_country: "Italy", island_name: "Elba")
Island.create!(island_country: "Italy", island_name: "Capri")
Island.create!(island_country: "Italy", island_name: "Sicily")
Island.create!(island_country: "Italy", island_name: "Sardinia")
Island.create!(island_country: "France", island_name: "Corsica")
Island.create!(island_country: "Greece", island_name: "Santorini")
Island.create!(island_country: "Greece", island_name: "Corfu")
Island.create!(island_country: "Spain", island_name: "Ibiza")
Island.create!(island_country: "Spain", island_name: "Mallorca")
Island.create!(island_country: "Spain", island_name: "Menorca")

############################################################

puts 'Creating producers...'

# Producer.create!(producer_name: "Atha Ruja", email: "info@atharuja.com", address1: "Via Emilia 45", address2: "", postal_code: "", city: "Dorgali", country: "Italy", island_id: Island.where(island_name: "Sardinia"), user_id: User.where(email: "anderskiss11@gmail.com"))

Producer.create!(producer_name: "D'Ambra Vini D'Ischia Srl", email: "test@test.com", address1: "Via Mario D'Ambra 30", address2: "", postal_code: "80075", city: "Forio", country: "Italy", island_id: Island.first.id, user_id: User.first.id)

Producer.create!(producer_name: "D'Ambra Vini D'Ischia Srl", email: "info@dambravini.com", address1: "Via Mario D'Ambra 30", address2: "", postal_code: "80075", city: "Forio", country: "Italy", island_id: Island.first.id, user_id: User.first.id)

Producer.create!(producer_name: "Cenatiempo Vini D'Ischia", email: "info@vinicenatiempo.it", address1: "Via Baldassarre Cossa 84", address2: "", postal_code: "80077", city: "Ischia", country: "Italy", island_id: Island.last.id, user_id: User.first.id)

puts 'seeding finished!'
