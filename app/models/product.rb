class Product < ApplicationRecord
    has_many :bill_lines, foreign_key: 'product'
    has_many :stock_histories, foreign_key: 'product'
    has_many :tax_products, foreign_key: 'product'
end
