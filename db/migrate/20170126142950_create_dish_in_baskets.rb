class CreateDishInBaskets < ActiveRecord::Migration[5.0]
  def change
    create_table :dish_in_baskets do |t|
      t.integer :basket_id
      t.integer :dish_id
      t.string :title
      t.decimal :price
      t.integer :quantity
      t.integer :total

      t.timestamps
    end
  end
end
