ActiveAdmin.register Article do
  index do
    column :title
    column :body do |article|
      truncate(article.body)
    end
    column :published
    column :created_at
    column :updated_at
    default_actions
  end

  controller do
    def permitted_params
      params.permit(:article => [:title, :body, :published])
    end
  end

end
