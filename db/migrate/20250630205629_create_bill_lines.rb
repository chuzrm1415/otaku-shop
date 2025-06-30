class CreateBillLines < ActiveRecord::Migration[8.0]
  def change
    create_table :bill_lines do |t|
      t.integer :bill
      t.integer :product
      t.integer :cant
      t.decimal :total, precision: 10, scale: 2

      t.timestamps
    end
  end
end
