class AddColumnToStaticPage < ActiveRecord::Migration[5.0]
  def change
    add_column :static_pages, :display_in_nav, :boolean
  end
end
