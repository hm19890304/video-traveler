class Video < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :category
  belongs_to :user
  has_one_attached :movie

  with_options numericality: { other_than: 1, message: 'を入力してください' } do
    validates :category_id
    validates :prefecture_id
  end

  with_options presence: true do
    validates :title
    validates :explanation
  end

  validates :movie, attached: true
  validate :movie_size

  def self.search(search)
    if search != ""
      Video.where('title LIKE(?)', "%#{search}%")
    else
      Video.all.order('created_at DESC')
    end
  end

  private

  def movie_size
    errors.add(:movie, 'は1つのファイル10MB以内にしてください') if movie.attached? && movie.blob.byte_size > 10.megabytes
  end
end
