ActiveAdmin.register User do

  index do
    selectable_column
    id_column
    column :username
    column :email
    column :first_name
    column :last_name
  end

  filter :email
end
