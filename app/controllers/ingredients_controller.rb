class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    @order_item = current_order.order_items.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @order_item = current_order.order_items.new
  end
end
