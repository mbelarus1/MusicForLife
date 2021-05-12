class Booking < ApplicationRecord
  belongs_to :listings
  belongs_to :users
  has_one :review, dependent: :destroy
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :price, presence: true
end
