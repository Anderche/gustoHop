class Producer < ApplicationRecord
  belongs_to :user
  belongs_to :island

  has_one_attached :photo
end
