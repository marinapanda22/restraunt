class DishInBasket < ApplicationRecord
	belongs_to :dish
	belongs_to :basket
end
