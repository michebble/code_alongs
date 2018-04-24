class Dish < ActiveRecord::Base
  # validate :name, length: { in: 6..20 },
  # validate :image_url, presence: true,
  has_many :comments
  has_many :likes

end