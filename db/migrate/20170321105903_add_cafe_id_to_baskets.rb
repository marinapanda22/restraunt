class AddCafeIdToBaskets < ActiveRecord::Migration[5.0]
  def change
    add_column :baskets, :cafe_id, :integer
  end
end
