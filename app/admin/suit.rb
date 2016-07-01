ActiveAdmin.register Suit do
  #  name                     :string
  #  quantity                 :integer
  #  unit_price               :decimal(, )
  #  sex                      :string
  #  colour                   :string
  #  jacket_lapels            :string
  #  jacket_vents             :string
  #  jacket_buttons           :string
  #  created_at               :datetime         not null
  #  updated_at               :datetime         not null
  #  image_one_file_name      :string
  #  image_one_content_type   :string
  #  image_one_file_size      :integer
  #  image_one_updated_at     :datetime
  #  image_two_file_name      :string
  #  image_two_content_type   :string
  #  image_two_file_size      :integer
  #  image_two_updated_at     :datetime
  #  image_three_file_name    :string
  #  image_three_content_type :string
  #  image_three_file_size    :integer
  #  image_three_updated_at   :datetime

  permit_params :name, :quantity, :unit_price, :sex, :colour,
    :jacket_lapels, :jacket_vents, :jacket_buttons, :image_one, :image_two,
    :image_three
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
      f.input :image_one, as: :file
      f.input :image_two, as: :file
      f.input :image_three, as: :file
    end
    f.actions
  end
end
