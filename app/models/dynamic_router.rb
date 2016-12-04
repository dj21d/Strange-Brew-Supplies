class DynamicRouter
  def self.load
    Rails.application.routes.draw do
      if ActiveRecord::Base.connection.table_exists? 'Static_Pages'
        StaticPage.all.each do |pg|
          get "/#{pg.title.tr(" ","_")}", :to => "static_pages#show", defaults: { id: pg.id }
        end
      end
    end
  end

  def self.reload
    Rails.application.routes_reloader.reload!
  end
end