class AddColumnsToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :delivered, :string
    add_column :orders, :dep, :string
    add_column :orders, :pob, :string
  end
end
