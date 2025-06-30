class CreateTaxProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :tax_products do |t|
      t.integer :product
      t.integer :tax

      t.timestamps
    end
  end
end
