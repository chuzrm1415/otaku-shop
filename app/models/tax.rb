class Tax < ApplicationRecord
    has_many :tax_products, foreign_key: 'tax'
end
