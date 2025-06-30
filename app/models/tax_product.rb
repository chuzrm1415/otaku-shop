class TaxProduct < ApplicationRecord
    belongs_to :product, class_name: 'Product', foreign_key: 'product'
    belongs_to :tax, class_name: 'Tax', foreign_key: 'tax'
end
