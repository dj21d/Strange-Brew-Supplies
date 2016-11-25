class StaticPage < ApplicationRecord
  validates :title, presence: true
  after_save :reload_routes

  def reload_routes
    DynamicRouter.reload
  end
end
