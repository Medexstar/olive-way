class CreateOrdersAccessories < ActiveRecord::Migration
  def change
    create_table :orders_accessories, id: false do |t|
        t.belongs_to :order, index:true
        t.belongs_to :accessory, index:true
    end
  end
end
