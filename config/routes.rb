Rails.application.routes.draw do
  get 'users/home'
  get 'users/help'
  scope "(:locale)", locale: /en|vi/ do
    root to: "static_pages#home"
    get "static_pages/help"
    get "admin_pages/home"
    get "admin_pages/help"
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  end
end
