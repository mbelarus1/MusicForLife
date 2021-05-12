# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
       #seeding Users
        20.times do
          usertest = User.create(
          username: Faker::Name.name,
          email: Faker::Internet.email,
          password: "tertet",
          )
         # puts "User creation..."
         # puts usertest.username
          usertest.save!
        end
#Seeding listings
        20.times do
          listing = Listing.create(
          title: Faker::Music.instrument,
          description: Faker::Quote.matz,
          )
         puts "User creation..."
         puts listing.title
          listing.save!
        end
