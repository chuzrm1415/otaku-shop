class StockHistory < ApplicationRecord
    belongs_to :product, class_name: 'Product', foreign_key: 'product_id'
    belongs_to :move_type, class_name: 'MoveType', foreign_key: 'move_type'
end
