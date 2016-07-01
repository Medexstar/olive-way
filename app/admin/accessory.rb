ActiveAdmin::register Accessory do
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
      f.input :created_at
      f.input :updated_at
    end
    f.actions
  end
end
