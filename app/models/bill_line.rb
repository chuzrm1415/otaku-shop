class BillLine < ApplicationRecord
    belongs_to :bill, class_name: 'Bill', foreign_key: 'bill'
    belongs_to :product, class_name: 'Product', foreign_key: 'product'
end
