ActiveAdmin::register Accessory do
  permit_params :name, :quantity, :unit_price, :main_image,
                :image_one, :image_two, :image_three
  index do
    selectable_column
    id_column
    column :name
    column :quantity
    column :unit_price
    column :created_at
    column :updated_at
    actions
  end

  filter :unit_price

  form do |f|
    f.inputs "Accessory Details" do
      f.input :name
      f.input :quantity
      f.input :unit_price
      f.input :comment
      f.input :main_image, as: :file
      f.input :image_one, as: :file
      f.input :image_two, as: :file
      f.input :image_three, as: :file
    end
    f.actions
  end
end
