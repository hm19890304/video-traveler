class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :prefecture
  has_many :videos, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_videos, through: :favorites, source: :video
  has_many :comments, dependent: :destroy

  validates :name, uniqueness: true

  with_options numericality: { other_than: 1, message: 'を入力してください' } do
    validates :prefecture_id
  end

  def email_required?
    false
  end
end
