class StaticPage < ApplicationRecord
  validates :title, presence: true
  def reload_routes
    DynamicRouter.reload
  end
end
