class Basket < ApplicationRecord
	belongs_to :user
	has_many :dish_in_baskets
end
