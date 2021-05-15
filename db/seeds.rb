# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    #Placeholder for random User selection
    rand_user_id = rand(Model.count) # generates a number of Users
    rand_user = User.first(:conditions => ["id >= ?", rand_user_id]
    rand_booking_id = rand(Booking.count) # generates a number of Users
    rand_booking = Booking.first(:conditions => ["id >= ?", rand_booking_id]
    rand_listing_id = rand(Listing.count) # generates a number of Users
    rand_listing = Listing.first(:conditions => ["id >= ?", rand_listing_id]
       #seeding Users
        20.times do
          usertest = User.create(
          username: Faker::Name.name,
          email: Faker::Internet.email,
          password: "terteUset",
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
          listing.user = user
          )
         puts "Listing creation..."
         puts listing.title
          listing.save!
        end
#Seeding Reviews
        20.times do
          review = Review.create(
          comment: "Oh my god, so Amazing",
          rating: 5,
          review.booking = rand_booking
          )
         puts "Review creation..."
         puts listing.title
          listing.save!
        end
#Seeding Booking
        20.times do
          booking = Booking.create(
          start_date: "TBD",
          end_date: "TBD",
          price: 43,
          booking.user = rand_user,
          booking.listing = rand_listing,

          )
         puts "Review creation..."
         puts listing.title
          listing.save!
        end
