ActiveAdmin.register Suit do
  permit_params :name, :quantity, :unit_price, :sex,
                :image_one, :image_two, :image_three
  index do
    selectable_column
    id_column
    column :name
    column :quantity
    column :unit_price
    column :sex
    column :created_at
    column :updated_at
    actions
  end

  filter :sex

  form do |f|
    f.inputs "Suit Details" do
      f.input :name
      f.input :quantity
      f.input :unit_price
      f.input :sex
      f.input :image_one, as: :file
      f.input :image_two, as: :file
      f.input :image_three, as: :file
    end
    f.actions
  end
end
