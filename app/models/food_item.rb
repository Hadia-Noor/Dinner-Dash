class FoodItem < ApplicationRecord
  validates :title, :description, :price, presence: true
  validates :title, :uniqueness => true
  has_many :order_items
  belongs_to :category
  has_many :comments
  has_one_attached :image

  def image_url_present
    if image_url.present?
      image_url
    else
      "https://loremflickr.com/320/240/#{title}"
    end
  end
end
