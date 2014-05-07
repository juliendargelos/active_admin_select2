ActiveAdmin.register Book do

  permit_params :title, :author_id

  select2_filter :author_id, input_html: {data: {
    select2_options: {
      placeholder: "Select an author",
      resourcesPath: "/admin/authors",
      queryKey: "q[name_cont]",
      order: "name_asc",
      resultFormat: "data.name"
    }
  }}

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
