class RenameClientToClientIdInBills < ActiveRecord::Migration[8.0]
  def change
    rename_column :bills, :client, :client_id
  end
end
