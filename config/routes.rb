Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'app#startup'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  get '/users/login', to: 'users#show_login'
  post '/users/login', to: 'users#do_login'
  post '/users/logout', to: 'users#do_logout'

  get '/admin', to: 'admin_panel#index', as: 'index_admin_panel'

  get '/admin/posts', to: 'admin_panel#index', as: 'posts_admin_panel'
  get '/admin/posts/new', to: 'admin_panel#new_post', as: 'new_post_admin_panel'
  get '/admin/posts/edit', to: 'admin_panel#edit_post', as: 'edit_post_admin_panel'
  post '/admin/posts', to: 'admin_panel#save_post', as: 'save_post_admin_panel'
  post '/admin/posts/update', to: 'admin_panel#update_post', as: 'update_post_admin_panel'
end