class Atv < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :city, presence: true
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
