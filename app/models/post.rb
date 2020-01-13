class Post < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :image, presence: true
  validates :place, presence: true
  validates :anime_title, presence: true
  validates :description, presence: true

  mount_uploader :image, ImageUploader
end
