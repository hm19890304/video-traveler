class Video < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :category
  has_one_attached :movie

  with_options numericality: { other_than: 1, message: "を入力してください" } do
    validates :category_id
    validates :prefecture_id
  end

  with_options presence: true do
    validates :title
    validates :explanation
  end

  validates :movie, attached: true
  validate :movie_size

  private

  def movie_size
    if movie.attached? && movie.blob.byte_size > 5.megabytes
      errors.add(:movie, "は1つのファイル5MB以内にしてください")
    end
  end

end
