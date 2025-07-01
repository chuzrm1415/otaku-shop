class TaxProductsController < ApplicationController
  def new
    @tax_product = TaxProduct.new
    @products = Product.all
    @taxes = Tax.all
  end

  def create
    @tax_product = TaxProduct.new(tax_product_params)
    if @tax_product.save
      redirect_to products_path, notice: "Impuesto asignado al producto."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def tax_product_params
    params.require(:tax_product).permit(:product_id, :tax_id)
  end
end
