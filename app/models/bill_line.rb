class BillLine < ApplicationRecord
  belongs_to :bill
  belongs_to :product

  before_save :set_subtotal_and_total

  def set_subtotal_and_total
    self.subtotal = product.price * cant
    self.total = subtotal + tax_amount(subtotal)
  end

  def tax_amount(subtotal_value = nil)
    subtotal_value ||= subtotal
    total_percentage = product.taxes.sum(:value)
    subtotal_value * (total_percentage / 100.0)
  end
end
