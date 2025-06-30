class CreateStockHistories < ActiveRecord::Migration[8.0]
  def change
    create_table :stock_histories do |t|
      t.integer :product
      t.integer :move_type
      t.integer :cant
      t.datetime :date

      t.timestamps
    end
  end
end
