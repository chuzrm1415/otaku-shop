class BillLinesController < ApplicationController
  def new
    @bill = Bill.find(params[:bill_id])
    @bill_line = @bill.bill_lines.new
    @products = Product.all
  end

  def create
    @bill = Bill.find(params[:bill_id])
    @bill_line = @bill.bill_lines.new(bill_line_params)
    if @bill_line.save
      redirect_to bill_path(@bill), notice: 'Producto agregado a la factura.'
    else
      @products = Product.all
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bill_line_params
    params.require(:bill_line).permit(:product_id, :cant)
  end
end
