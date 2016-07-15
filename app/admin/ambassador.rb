ActiveAdmin::register Ambassador do
  permit_params :first_name, :last_name, :promotion_code, :email, :mobile,
                  :university, :approved
  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :university
    column :promotion_code
    column :approved
    actions
  end

  filter :promotion_code
  filter :approved

  form do |f|
    f.inputs "Ambassador Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :mobile
      f.input :university
      f.input :promotion_code
      f.input :approved
    end
    f.actions
  end
end
