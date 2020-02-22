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

  after_validation :geocode

  private
  def geocode
    uri = URI.escape("https://maps.googleapis.com/maps/api/geocode/json?address="+self.place.gsub(" ", "")+"&key=#{ ENV['GOOGLE_MAP_API_KEY'] }")
    res = HTTP.get(uri).to_s
    response = JSON.parse(res)
    self.latitude = response["results"][0]["geometry"]["location"]["lat"]
    self.longitude = response["results"][0]["geometry"]["location"]["lng"]
  end
end
