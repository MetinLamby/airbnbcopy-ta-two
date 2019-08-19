class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  # validates :name, :desciption, :price, presence: true
end
