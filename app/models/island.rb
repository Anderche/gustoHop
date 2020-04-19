class Island < ApplicationRecord
  has_many :producers
  # has_many :producers, only: [ :index, :show ]
end
