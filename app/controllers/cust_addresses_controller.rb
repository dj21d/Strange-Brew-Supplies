class CustAddressesController < ApplicationController
  before_action :require_customer, only: [:new,:create, :destroy,:show, :edit, :update]
  def new
    @cust_address = CustAddress.new
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end

  def create
    @cust_address = CustAddress.new(customer_address_params)
    if @cust_address.save
      redirect_to('/myaccount')
    else
      redirect_to'/myaccount/add_address', :flash => { :error => "Error Creating Address" }
    end
  end

  private
  def customer_address_params
    params.require(:cust_address).permit(:full_name, :street_address, :city, :country, :postal_code, :province_id, :customer_id, :phone_number)
  end
end
