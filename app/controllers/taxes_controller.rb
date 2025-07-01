class TaxesController < ApplicationController
  def index
    @taxes = Tax.all
  end

  def new
    @tax = Tax.new
  end

  def create
    @tax = Tax.new(tax_params)
    if @tax.save
      redirect_to @tax, notice: 'Impuesto creado exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @tax = Tax.find(params[:id])
  end

  def update
    @tax = Tax.find(params[:id])
    if @tax.update(tax_params)
      redirect_to @tax, notice: 'Impuesto actualizado exitosamente.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @tax = Tax.find(params[:id])
  end

  private

  def tax_params
    params.require(:tax).permit(:name, :value)
  end
end
