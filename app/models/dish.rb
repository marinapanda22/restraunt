class Dish < ApplicationRecord
	belongs_to :cafe
	belongs_to :category
	has_many :dish_in_baskets
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
