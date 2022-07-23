# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying all users'
User.destroy_all
puts 'Done!'

puts 'Destroying all trips'
Trip.destroy_all
puts 'Done!'

puts 'Destroying all accomodation'
Accomodation.destroy_all
puts 'Done!'

puts 'Destroying all transportation'
Transportation.destroy_all
puts 'Done!'

puts 'Destroying all activities'
Activity.destroy_all
puts 'Done!'

date = Date.today

puts 'Creating user'
user = User.create(first_name: 'Thibault', last_name: 'Chassine', email: 'thib@gmail.com', password: 'azerty')
puts 'Done!'

puts 'Creating trip'
trip = Trip.create(name: 'Best Trip OTY', start_date: date + 1, end_date: date + 15, status: Trip::STATUS.sample, user: user)
puts 'Done!'

puts 'Creating transportation'
Transportation.create(name: 'AirFrance A380', transportation_type: 'Avion', start_date: date + 1, end_date: date + 1, start_address: '69125 Colombier-Saugnieu', end_address: '95700 Roissy-en-France', price: 250, trip: trip)
Transportation.create(name: 'AirFrance Concorde', transportation_type: 'Avion', start_date: date + 15, end_date: date + 15, start_address: '94390 Orly', end_address: '33700 Mérignac', price: 150, trip: trip)
puts 'Done!'

puts 'Creating accomodation'
Accomodation.create(name: 'Hotel Madame Reve', accomodation_type: 'Hotel', price: 260, address: '48 Rue du Louvre, 75001 Paris', start_date: date + 1, end_date: date + 5, trip: trip)
Accomodation.create(name: 'Hotel Royal Monceau', accomodation_type: 'Hotel', price: 300, address: '37 Av. Hoche, 75008 Paris', start_date: date + 5, end_date: date + 10, trip: trip)
Accomodation.create(name: 'Hotel George V', accomodation_type: 'Hotel', price: 400, address: '31 Av. George V, 75008 Paris', start_date: date + 10, end_date: date + 15, trip: trip)
puts 'Done!'

puts 'Creating activities'
Activity.create(name: 'Effeil Tower', activity_type: 'Visit', price: 10, start_date: date + 2, end_date: date + 2, address: 'Champ de Mars, 5 Av. Anatole France, 75007 Paris', trip: trip)
Activity.create(name: 'Brasserie Rosie', activity_type: 'Restaurant', price: 38, start_date: date + 2, end_date: date + 2, address: '53 Rue du Faubourg Saint-Antoine, 75011 Paris', trip: trip)
Activity.create(name: 'Pedzouille La Grange', activity_type: 'Restaurant', price: 35, start_date: date + 10, end_date: date + 10, address: '4 Av. de la Prte de la Plaine, 75015 Paris', trip: trip)
Activity.create(name: 'Papacionu', activity_type: 'Restaurant', price: 40, start_date: date + 4, end_date: date + 4, address: '7 Rue Cadet, 75009 Paris', trip: trip)
Activity.create(name: 'Cave Du Louvre', activity_type: 'Degustation', price: 29, start_date: date + 7, end_date: date + 7, address: "52 Rue de l'Arbre Sec, 75001 Paris", trip: trip)
Activity.create(name: 'Faham', activity_type: 'Restaurant', price: 90, start_date: date + 14, end_date: date + 14, address: "108 Rue Cardinet, 75017 Paris", trip: trip)
puts 'Done!'

puts 'All is done! :)'
