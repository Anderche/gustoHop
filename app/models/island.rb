class Island < ApplicationRecord
  has_many :producers, dependent: :destroy
  # accepts_nested_attributes_for :producers

  validates :island_name, uniqueness: true, presence: true
  validates :island_country, presence: true

  # validates_associated :producers
  has_one_attached :photo
end
