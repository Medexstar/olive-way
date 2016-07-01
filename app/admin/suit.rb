ActiveAdmin.register Suit do
  index do
    selectable_column
    id_column
    column :name
    column :quantity
    column :unit_price
    column :sex
    column :colour
    column :jacket_lapels
    column :jacket_vents
    column :jacket_buttons
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
      f.input :colour
      f.input :jacket_lapels
      f.input :jacket_vents
      f.input :jacket_buttons
      f.input :created_at
      f.input :updated_at
    end
    f.actions
  end
end
