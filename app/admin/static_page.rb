ActiveAdmin.register StaticPage do
  form do |f|
    f.inputs do
      f.input :title
      f.input :content, as: :html_editor
    end
    f.actions
  end
  permit_params :title,:content
end
