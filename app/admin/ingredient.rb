ActiveAdmin.register Ingredient do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs "Ingredient" do
      f.input :name
      f.input :price
      f.input :description
      f.input :image, :as => :file
      f.input :ingredient_type_id,:label => 'Ingredient Type', :as => :select, :collection => IngredientType.all.map{|u| ["#{u.name}", u.id]}
      f.input :measurement_id,:label => 'Measurement Type', :as => :select, :collection => Measurement.all.map{|u| ["#{u.name}", u.id]}
      f.input :package_size
      f.input :on_sale
      f.input :sale_price

    end
    f.actions
  end

  permit_params :name, :price, :image, :ingredient_type_id, :measurement_id, :on_sale, :sale_price, :package_size, :description

end
