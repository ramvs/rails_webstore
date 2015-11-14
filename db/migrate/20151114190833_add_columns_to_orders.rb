class AddColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :subtotal, :decimal
    add_column :orders, :tax, :decimal
    add_column :orders, :shipping, :decimal
    add_column :orders, :total, :decimal
  end
end
