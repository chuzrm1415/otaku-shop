class BillsController < ApplicationController
  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def new
    @bill = Bill.new
    @clients = Client.all
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to @bill, notice: 'Factura creada exitosamente.'
    else
      @clients = Client.all
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
    redirect_to bills_path, notice: 'Factura eliminada correctamente.'
  end

  private

  def bill_params
    params.require(:bill).permit(:client_id, :date)
  end
end
