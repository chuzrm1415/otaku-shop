class MoveType < ApplicationRecord
    has_many :stock_histories, foreign_key: 'move_type'
end
