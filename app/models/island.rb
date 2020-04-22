class Island < ApplicationRecord
  has_many :producers, dependent: :destroy
  accepts_nested_attributes_for :producers
end
