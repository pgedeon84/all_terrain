class Atv < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :city, presence: true
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
end
