class AddAddressToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :address, :text
  end
end
