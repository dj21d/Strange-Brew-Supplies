class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_static_pages
  helper_method :current_order

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
end
