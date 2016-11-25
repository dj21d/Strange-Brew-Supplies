class WelcomeController < ApplicationController
  def index
    @on_sale_ingredients = Ingredient.all
    @new_items = Ingredient.find_by!(:updated_at > 5.days.ago)
  end
end
