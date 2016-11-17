class DynamicRouter
  def self.load
    Rails.application.routes.draw do
      StaticPage.all.each do |pg|
        puts "Routing #{pg.title}"
        get "/#{pg.title.tr(" ","_")}", :to => "static_pages#show", defaults: { id: pg.id }
      end
    end
  end

  def self.reload
    Rails.application.routes_reloader.reload!
  end
end