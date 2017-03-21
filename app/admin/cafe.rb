ActiveAdmin.register Cafe do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :image, :description
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
      f.input :title
      f.input :description     
      f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end
index do
    selectable_column
    column :image do |cafe|
      image_tag cafe.image.url(:thumb)
    end
    column :title do |cafe|
      link_to cafe.title, admin_cafe_path(cafe)
    end
    column :description do |cafe|
      link_to cafe.description, admin_cafe_path(cafe)
    end
    actions
  end
show do
 attributes_table do
   row :image do |cafe|
     image_tag cafe.image.url(:medium)
   end
   row :title
   row :description
 end
 active_admin_comments
end




end
