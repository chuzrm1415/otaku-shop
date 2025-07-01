class AddSubTotalToBillLines < ActiveRecord::Migration[8.0]
  def change
    add_column :bill_lines, :subtotal, :decimal, precision: 10, scale: 2
  end
end
