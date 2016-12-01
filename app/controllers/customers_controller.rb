class CustomersController < ApplicationController
  before_action :require_customer, only: [:show, :update]
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      session[:customer_id] = @customer.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:full_name, :email, :password)
  end

  def update
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end

  def show
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end
end
