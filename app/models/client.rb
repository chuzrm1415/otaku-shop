class Client < ApplicationRecord
    has_many :bills, foreign_key: 'client'
end
