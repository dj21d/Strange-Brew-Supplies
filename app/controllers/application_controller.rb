class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_static_pages
  helper_method :current_order
  helper_method :current_customer

  private
  def set_static_pages
    @static_pages = StaticPage.all
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def current_customer
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end
  
  def require_customer
    redirect_to '/login' unless current_customer
  end
end
