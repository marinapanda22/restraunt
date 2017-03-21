ActiveAdmin.register Dish do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :image, :description, :price, :cafe_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
    f.inputs do   
      f.select :cafe_id, Cafe.all 
      f.input :title
      f.input :price
      f.input :description     
      f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end
index do
    selectable_column
    column :image do |dish|
      image_tag dish.image.url(:thumb)
    end
    column :title do |dish|
      link_to dish.title, admin_dish_path(dish)
    end
    column :price do |dish|
      link_to dish.price, admin_dish_path(dish)
    end
    column :cafe_id do |dish|
      link_to dish.cafe.title, admin_dish_path(dish)
    end
    column :description do |dish|
      link_to dish.description, admin_dish_path(dish)
    end
    actions
  end
show do
 attributes_table do
   row :image do |dish|
     image_tag dish.image.url(:medium)
   end
   row :title
   row :cafe_id
   row :price
   row :description
 end
 active_admin_comments
end

end
