class RenameProductAndTaxInTaxProducts < ActiveRecord::Migration[8.0]
  def change
    rename_column :tax_products, :product, :product_id
    rename_column :tax_products, :tax, :tax_id
  end
end
