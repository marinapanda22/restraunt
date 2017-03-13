class Category < ApplicationRecord
	belongs_to :cafe
	has_many :dishes
end
