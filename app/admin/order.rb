ActiveAdmin::register Order do
  index do
    selectable_column
    id_column
    column :user_id
    column :ordered_on
    column :created_at
    column :updated_at
    actions
  end
  filter :user_id

  form do |f|
    f.inputs "Order Details" do
      f.input :user_id
      f.input :ordered_on
      f.input :created_at
      f.input :updated_at
    end
    f.actions
  end
end
