class Bill < ApplicationRecord
  belongs_to :client
  has_many :bill_lines

  def subtotal
    bill_lines.sum { |line| line.subtotal }
  end

  def total
    bill_lines.sum { |line| line.total }
  end
end
