class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|

      t.timestamps null: false
    end
  end
end
