class AddCafeToDishes < ActiveRecord::Migration[5.0]
  def change
    add_reference :dishes, :cafe, foreign_key: true
  end
end
