class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :manufacturer
      t.string :category
      t.integer :units_in_stock

      t.timestamps null: false
    end
  end
end
