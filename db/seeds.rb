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
          puts "User creation..."
          puts usertest.email
          usertest.save!
        end

listing1 = Listing.create(
          title: "Yamaha Synthesizer",
          description: "If you want to impress your friends and family you should totally get this Yamaha Synthesizer at your next party. The sound this instrument produces will literally blow your ears.",
          price: rand(1..289)
          )
          listing1.user = User.all.sample
          file = URI.open('https://thumbs.static-thomann.de/thumb/orig/pics/bdb/448197/13576141_800.jpg')
          puts "Listing creation..."
          puts listing1.title
          listing1.save!
          listing1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
          file.close

listing2 = Listing.create(
          title: "Violin",
          description: "If instruments could be sexy, violins would be the absolute sex symbol. Its shapes are just too damn fine. This specific violin is so beautiful that I would prefer not to rent it. But hey, we all need some extra cash sometimes!",
          price: rand(1..289)
          )
          listing2.user = User.all.sample
          file = URI.open('https://promocionmusical.es/wp-content/uploads/2019/01/xcuantas-cuerdas-tiene-un-violin-810x500.jpg.pagespeed.ic.aMDn0QqDGW.jpg')
          puts "Listing creation..."
          puts listing1.title
          listing2.save!
          listing2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
          file.close

listing3 = Listing.create(
          title: "Organ",
          description: "When playing to this splendid organ, you can bet your butt that the birds outside your house start dancing and chirping. The sounds is just so pure and beautiful. This is a masterpiece.",
          price: rand(1..289)
          )
          listing3.user = User.all.sample
          file = URI.open('https://www.trincoll.edu/spiritualandreligiouslife/wp-content/uploads/sites/23/2020/10/5G1A0105small-1-scaled-e1601579285122.jpg')
          puts "Listing creation..."
          puts listing3.title
          listing3.save!
          listing3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
          file.close

listing4 = Listing.create(
          title: "Harmonica",
          description: "Imagine jazz or blues without the harmonica. It is simply impossible. My harmonica is made out of white gold (no joke) so please take perfect care of it. If you don’t I will send the FBI after you.",
          price: rand(1..289)
          )
          listing4.user = User.all.sample
          file = URI.open('https://thumbs.static-thomann.de/thumb/padthumb600x360/pics/bdb/174720/9374574_800.jpg')
          puts "Listing creation..."
          puts listing4.title
          listing4.save!
          listing4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
          file.close

listing5 = Listing.create(
          title: "Drums",
          description: "You don’t even need to be a musician to rent these amazing drums from me. For example: if you are tired of your neighbours, this is the way to go. Just start slamming these drums in the middle of the night and you will see it works.",
          price: rand(1..289)
          )
          listing5.user = User.all.sample
          file = URI.open('https://rolandcorp.com.au/blog/wp-content/uploads/2020/09/record-e-drums-960x600-1.jpg')
          puts "Listing creation..."
          puts listing5.title
          listing5.save!
          listing5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
          file.close

listing6 = Listing.create(
          title: "Guitar",
          description: "This is my favorite guitar of all the 100 guitars I have owned in my life. I am renting it because I believe that happiness is better when shared. This acoustic beauty sounds as pretty as it looks.",
          price: rand(1..289)
          )
          listing6.user = User.all.sample
          file = URI.open('https://www.sciencenewsforstudents.org/wp-content/uploads/2019/11/860_AT_guitar_acoustics.png')
          puts "Listing creation..."
          puts listing6.title
          listing6.save!
          listing6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
          file.close

listing7 = Listing.create(
          title: "Lady Gaga",
          description: "Imagine having Lady Gaga so sing at your birthday party. A dream come true, isn’t it? The queen of pop seems to be my sister so it’s your lucky day. She owes me a favor, so in return she let me rent her for cheap.",
          price: rand(3000..5000)
          )
          listing7.user = User.all.sample
          file = URI.open('https://imagenes.20minutos.es/files/image_656_370/files/fp/uploads/imagenes/2020/11/20/lady-gaga.r_d.903-536.jpeg')
          puts "Listing creation..."
          puts listing7.title
          listing7.save!
          listing7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
          file.close
listing8 = Listing.create(
          title: "Marimba",
          description: "Imagine yourself on a tropical beach, with nothing more than palmtrees and a crystal blue ocean in your sight. Right when your waiter pours your third cocktail of the day, the most beautiful music starts being played in the background. This is the true essence of the Marimba.",
          price: rand(1..289)
          )
          listing8.user = User.all.sample
          file = URI.open('https://thumbs.static-thomann.de/thumb/orig/pics/bdb/411814/12119632_800.jpg')
          puts "Listing creation..."
          puts listing8.title
          listing8.save!
          listing8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
          file.close



#Seeding listings
#        10.times do
#          listing = Listing.create(
#          title: Faker::Music.instrument,
#          price: rand(1..289),
#          description: Faker::Quote.matz,
#          )
#         listing.user = User.all.sample
#        file = URI.open('https://www.jimlaabsmusicstore.com/wp-content/uploads/2019/12/Medeli-DP650K-Digital-Upright-Piano.jpg')
#         puts "Listing creation..."
#        puts listing.title
#          listing.save!
#          listing.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#       file.close
#        end
        # attaching image:

    #Seeding Booking
        # 5.times do
        #   booking = Booking.create(
        #   start_date: "TBD",
        #   end_date: "TBD",
        #   price: 43

        #   )
        #   booking.user = User.all.sample
        #   booking.listing =  Listing.all.sample
        #  puts "Booking creation..."
        #   booking.save!
       # end
# #Seeding Reviews
#       Review.destroy_all
#         10.times do
#           review = Review.create(
#           comment: "Oh my god, so Amazing",
#           rating: 5,
#           )
#           review.booking = Booking.all.sample
#           review.user = User.all.sample
#          puts "Review creation..."

#           review.save!
#         end


