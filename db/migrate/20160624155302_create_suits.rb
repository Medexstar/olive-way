class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string    :name,        null: false
      t.integer   :quantity,    null: false
      t.integer   :unit_price,  null: false
      t.integer   :sex,         null: false
      t.timestamps null: false
    end
  end
end
