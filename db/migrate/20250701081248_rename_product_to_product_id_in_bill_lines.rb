class RenameProductToProductIdInBillLines < ActiveRecord::Migration[8.0]
  def change
    rename_column :bill_lines, :product, :product_id
  end
end
