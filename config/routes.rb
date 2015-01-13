Rails.application.routes.draw do
  get 'profiles/show'

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/signout'

  # get 'sessions/signup'

  # get 'sessions/create_photon'

  get "session/new" => "sessions#new", as: "sign_in"
  post "session" => "sessions#create"
  delete "session" => "sessions#signout", as: "sign_out"
  get "signup" => "sessions#signup", as: :signup
  post "signup" => "sessions#create_photon", as: :create_photon

  get 'waves/index'

  post 'waves/post'

  root 'waves#index'

  resources :waves




  # get 'posts/new'
  #
  # get 'posts/edit'
  #
  # get 'profiles/show'
  #
  # #get 'session/create'
  #
  # root 'home#index'
  #
  # post "posts" => "home#new_post", as: "new_post"
  #
  #
  # get "session/new" => "session#new", as: "sign_in"
  # post "session" => "session#create"
  # delete "session" => "session#signout", as: "sign_out"
  # get "signup" => "session#signup", as: :signup
  # post "signup" => "session#create_user", as: :create_user
  #
  # get "users/:name" => "profiles#show", as: "profile"
  #
  # resources :posts


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
