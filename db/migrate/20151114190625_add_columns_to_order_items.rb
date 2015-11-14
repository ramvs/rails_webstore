class AddColumnsToOrderItems < ActiveRecord::Migration
  def change
    add_column :order_items, :product_id, :integer
    add_column :order_items, :order_id, :integer
    add_column :order_items, :unit_price, :decimal
    add_column :order_items, :quantity, :integer
    add_column :order_items, :total_price, :decimal
  end
end
