json.extract! dish_in_basket, :id, :basket_id, :dish_id, :title, :price, :quantity, :total, :created_at, :updated_at
json.url dish_in_basket_url(dish_in_basket, format: :json)