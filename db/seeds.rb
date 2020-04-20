
puts 'Cleaning database...'
User.destroy_all
Island.destroy_all
Producer.destroy_all

############################################################

puts 'Creating Users...'

User.create!(email: "janedoe@test.com", password: "123456")
User.create!(email: "ottaviadigrazie@test.com", password: "123456")
User.create!(email: "anderskiss11@gmail.com", password: "123456")

############################################################

puts 'Creating islands...'

Island.create!(island_country: "Italy", island_name: "Ischia")
Island.create!(island_country: "Italy", island_name: "Elba")
Island.create!(island_country: "Italy", island_name: "Capri")
Island.create!(island_country: "Italy", island_name: "Sicily")
Island.create!(island_country: "Italy", island_name: "Sardinia")

############################################################

puts 'Creating producers...'

Producer.create!(producer_name: "Villa Ottavia", email: "test@test.com", address1: "123 Via Aurelia", address2: "", postal_code: "52347", city: "Porta Genova", country: "Italy", island_id: Island.first.id, user_id: User.last.id)

# Producer.create!(producer_name: "Villa Ottavia", email: "test@test.com", address1: "123 Via Aurelia", address2: "", postal_code: "52347", city: "Porta Genova", country: "Italy", island_id: Island.last.id, user_id: User.last.id)

Producer.create!(producer_name: "Villa Guilia", email: "test@test.com", address1: "123 Via Casaretto", address2: "", postal_code: "23347", city: "Porta Nolana", country: "Italy", island_id: Island.last.id, user_id: User.last.id)


puts 'seeding finished!'
