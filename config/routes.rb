Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Home Page:
  # get 'index', to: 'pages#index'
  # get 'profile', to: 'pages#profile'
  # get 'product_detail', to: 'pages#product_detail'

  # Browse all listings (Read all)
  get 'listings', to: 'listings#index'

  # Create a listing (To be determined ho Devise is gonna pull user id via a variable)
  get 'listings/new', to: 'listings#new'
  post 'listings', to: 'listings#create'

  #Browse one listing
  get 'listings/:id', to: 'listings#show'

  # delete a listing
  delete 'listings/:id', to: "listings#destroy"

  #create a booking
  get 'listings/:listing_id/bookings/new', to: 'bookings#new'
  post 'listings/:listing_id/bookings', to: 'bookings#create'

  #Create a review for the booking
  get 'bookings/:booking_id/reviews/new', to: 'reviews#new'
  post 'bookings/:booking_id/reviews', to: 'reviews#create'

  #update a listing
  get 'listings/:id/edit', to: 'listings#edit'
  patch 'listings/:id', to: 'listings#update'

  #custom view for My Listings
  get 'my_listings', to: 'listings#my_listings'
end
