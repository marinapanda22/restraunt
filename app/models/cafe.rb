class Cafe < ApplicationRecord
	has_many :dishes
	has_many :categories
end
