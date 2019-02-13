# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
resto1 = Restaurant.new(name: "Jojo", address: "rue du bout", phone_number: "01 42 35 45 67", category: "italian")
resto1.save!
resto2 = Restaurant.new(name: "Au Sagouinos", address: "bld des Dames", phone_number: "01 42 56 34 89", category: "belgian")
resto2.save!
resto3 = Restaurant.new(name: "Viens chez moi", address: "place de la République", phone_number: "01 45 34 45 29", category: "french")
resto3.save!
resto4 = Restaurant.new(name: "Le merou", address: "impasse J. Coustaud", phone_number: "01 46 79 74 82", category: "french")
resto4.save!
resto5 = Restaurant.new(name: "Au bon nem", address: "rue impériale", phone_number: "01 48 04 97 64", category: "chinese")
resto5.save!

puts "#{Restaurant.count} restaurants created"
puts 'Finished!'
