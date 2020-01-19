class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  validates :name, presence: true
  validates :image, presence: { message: 'を選択してください。' }
  validates :place, presence: true
  validates :anime_title, presence: true
  validates :description, presence: true

  mount_uploader :image, ImageUploader
end
