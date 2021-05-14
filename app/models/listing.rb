class Listing < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  has_many_attached :photos
end
