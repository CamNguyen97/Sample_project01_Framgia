class Studio < ApplicationRecord
  has_many :movies, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :status, presence: true
end
