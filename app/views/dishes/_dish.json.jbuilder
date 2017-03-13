json.extract! dish, :id, :title, :price, :description, :created_at, :updated_at
json.url dish_url(dish, format: :json)