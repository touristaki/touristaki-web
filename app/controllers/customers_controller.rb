class CustomersController < ApplicationController
  before_action :set_customer, only: %i[edit update show]

  def index
    @customers = Customer.all.page(params[:page])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to customer_path, notice: "Cliente cadastrado com sucesso!"
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @customer.update(customer_params)
      redirect_to customer_path, notice: "Cliente atualizado com sucesso!"
    else
      render :edit
    end
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :email, :language, :account_type)
  end
end
