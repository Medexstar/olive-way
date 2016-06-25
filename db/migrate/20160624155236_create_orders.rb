class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user, index:true
      t.decimal :total_price
      t.datetime :ordered_on
      t.timestamps null: false
    end
  end
end
