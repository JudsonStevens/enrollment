class Address < ApplicationRecord
  validates :description, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :street, presence: true
  validates :zip_code, presence: true
  belongs_to :student
end