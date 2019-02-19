class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :atv
  validates :from, presence: true
  validates :to, presence: true
end

