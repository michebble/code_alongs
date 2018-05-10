class AddImagesToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :images, :string, array: true, default: []
  end
end
