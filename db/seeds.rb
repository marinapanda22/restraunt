# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create!(name: 'Admin', email: 'adminnn@mail.ru', password: 'qwerty', password_confirmation: 'qwerty', admin: true)
AdminUser.create!(email: 'adminnn@example.ru', password: 'password', password_confirmation: 'password')
dir = Rails.root + 'app' + 'assets' + 'images'
cafe1 = Cafe.create!(title: 'Sierra', description: 'кафе', image:File.new(dir + "11.png"))
cafe2 = Cafe.create!(title: 'Kulikovskiy', description: 'кафе', image:File.new(dir + "12.png"))
dish1 = Dish.create!(cafe_id: cafe1.id, title: 'cake', description: 'c', price: 135, image:File.new(dir + "13.jpg"))
dish2 = Dish.create!(cafe_id: cafe2.id, title: 'salad', description: 's', price: 125, image:File.new(dir + "14.png"))
dish3 = Dish.create!(cafe_id: cafe2.id, title: 'dish', description: 'd', price: 133, image:File.new(dir + "15.png"))
dish4 = Dish.create!(cafe_id: cafe1.id, title: 'tort', description: 't', price: 137, image:File.new(dir + "16.png"))
