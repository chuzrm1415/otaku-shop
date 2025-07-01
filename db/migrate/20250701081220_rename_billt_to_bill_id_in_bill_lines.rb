class RenameBilltToBillIdInBillLines < ActiveRecord::Migration[8.0]
  def change
    rename_column :bill_lines, :bill, :bill_id
  end
end
