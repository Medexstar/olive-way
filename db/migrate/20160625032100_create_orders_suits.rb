class CreateOrdersSuits < ActiveRecord::Migration
  def change
    create_table :orders_suits, id: false  do |t|
        t.belongs_to :order, index:true
        t.belongs_to :suit, index:true
    end
  end
end
