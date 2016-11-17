class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_static_pages

  private
  def set_static_pages
    @static_pages = StaticPage.all
  end
end
