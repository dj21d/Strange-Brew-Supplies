class WelcomeController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
end
