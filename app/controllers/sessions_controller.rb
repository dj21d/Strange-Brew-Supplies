class SessionsController < ApplicationController
  def create
    @customer = Customer.find_by_email(params[:session][:email])
    if @customer && @customer.authenticate(params[:session][:password])
      session[:customer_id] = @customer.id
      redirect_to '/'
    else
      redirect_to 'login', :flash => { :error => "Incorrect Email or Password" }
    end
  end
  def new

  end
  def destroy
    session[:customer_id] = nil
    redirect_to '/'
  end
end
