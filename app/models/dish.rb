class Dish < ApplicationRecord
	belongs_to :cafe
	belongs_to :category
	has_many :dish_in_baskets
end
