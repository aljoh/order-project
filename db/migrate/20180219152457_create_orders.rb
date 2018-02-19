class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :number
      t.string :customer
      t.string :area
      t.integer :units
      t.string :order_date
      t.string :note

      t.timestamps
    end
  end
end
