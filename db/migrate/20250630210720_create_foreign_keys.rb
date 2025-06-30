class CreateForeignKeys < ActiveRecord::Migration[8.0]
  def change
    # tax_products foreign keys
    add_foreign_key :tax_products, :products, column: :product
    add_foreign_key :tax_products, :taxes, column: :tax

    # stock_histories foreign keys
    add_foreign_key :stock_histories, :products, column: :product
    add_foreign_key :stock_histories, :move_types, column: :move_type

    # bill_lines foreign keys
    add_foreign_key :bill_lines, :bills, column: :bill
    add_foreign_key :bill_lines, :products, column: :product

    # bill foreign keys
    add_foreign_key :bills, :clients, column: :client
  end
end
