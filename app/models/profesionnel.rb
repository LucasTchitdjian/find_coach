class Profesionnel < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
