ActiveAdmin.register StaticPage, as: "Information Page" do
  form do |f|
    f.inputs do
      f.input :title
      f.input :display_in_nav
      f.input :content, as: :html_editor
    end
    f.actions
  end
  permit_params :title,:content, :display_in_nav
end
