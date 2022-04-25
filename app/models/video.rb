class Video < ApplicationRecord
  has_one_attached :movie

  with_options presence: true do
    validates :title
    validates :explanation
end
