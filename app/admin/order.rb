ActiveAdmin::register Order do
  permit_params :user_id, :total_price
  index do
    selectable_column
    id_column
    column :user_id
    column :total_price
    column 'Shipping Address' do |o|
      o.user.formatted_shipping_address
    end
    column :ordered_on
    column :created_at
    column :updated_at
    actions
  end

  filter :user_id

  form do |f|
    f.inputs "Order Details" do
      f.input :user_id
      f.input :total_price
    end
    f.actions
  end
end
