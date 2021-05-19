# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    #Placeholder for random User selection
    # rand_user_id = rand(User.count) # generates a number of Users
    # rand_user = User.first(:conditions => ["id >= ?", rand_user_id])
    # rand_booking_id = rand(Booking.count) # generates a number of Users
    # rand_booking = Booking.first(:conditions => ["id >= ?", rand_booking_id])
    # rand_listing_id = rand(Listing.count) # generates a number of Users
    # rand_listing = Listing.first(:conditions => ["id >= ?", rand_listing_id])
       #seeding Users

        5.times do
          usertest = User.create(
          email: Faker::Internet.email,
          password: "terteUset")
         # puts "User creation..."
         # puts usertest.usernamer
          usertest.save!
        end

#Seeding listings
        10.times do
          listing = Listing.create(
          title: Faker::Music.instrument,
          description: Faker::Quote.matz,
          )
         listing.user = User.all.sample
        file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
         puts "Listing creation..."
         puts listing.title
          listing.save!
          listing.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
        file.close
        end
        # attaching image:

    #Seeding Booking
        5.times do
          booking = Booking.create(
          start_date: "TBD",
          end_date: "TBD",
          price: 43

          )
          booking.user = User.all.sample
          booking.listing =  Listing.all.sample
         puts "Booking creation..."
          booking.save!
        end
#Seeding Reviews
      Review.destroy_all
        10.times do
          review = Review.create(
          comment: "Oh my god, so Amazing",
          rating: 5,
          )
          review.booking = Booking.all.sample
          review.user = User.all.sample
         puts "Review creation..."

          review.save!
        end


