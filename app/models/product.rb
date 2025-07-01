class Product < ApplicationRecord
  has_many :bill_lines
  has_many :stock_histories
  has_many :tax_products
  has_many :taxes, through: :tax_products
end
