class Island < ApplicationRecord
  has_many :producers, dependent: :destroy
  # has_many :producers, only: [ :index, :show ]
end
