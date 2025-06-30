class CreateBills < ActiveRecord::Migration[8.0]
  def change
    create_table :bills do |t|
      t.integer :client
      t.datetime :date
      t.decimal :subtotal, precision: 10, scale: 2
      t.decimal :total, precision: 10, scale: 2

      t.timestamps
    end
  end
end
