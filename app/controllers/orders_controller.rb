class OrdersController < ApplicationController
  def checkout
    if !session[:customer_id]
      redirect_to '/login'
    else
      @order = current_order
      @order_items = @order.order_items
      @customer = Customer.find(session[:customer_id])
      @customer_addresses = CustAddress.where('Cust_id == ?', @customer.id)
    end
  end

  def invoice
    @order = current_order
    @order_items = @order.order_items
    @customer = @order.customer
    @order.update_attributes(order_params)
    session[:order_id] = nil
    end

  def order_params
    params.require(:order).permit(:customer_id, :order_status_id, :shipping_address_id, :billing_address_id)
  end
end
