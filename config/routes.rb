Rails.application.routes.draw do
  namespace :bx_block_accounts do
    resources :accounts
  end
  namespace :bx_block_posts do
    resources :posts
  end
  namespace :bx_block_blogs do
    resources :blogs
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
