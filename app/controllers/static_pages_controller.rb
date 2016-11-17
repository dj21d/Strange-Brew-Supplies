class StaticPagesController < ApplicationController
  def show
    @static_page = StaticPage.find(params[:id])
    redirect_to not_found_path unless @static_page
  end
end
