Rails.application.routes.draw do


  get     'quiz/:id'     => 'quiz#test'     
  get     'chineseinput' => 'quiz#play'
  root                    'static_pages#home'
  get     'help'       => 'static_pages#help'
  get     'about'      => 'static_pages#about'
  get     'contact'    => 'static_pages#contact'
  get     'beauty'     => 'static_pages#beauty'
  get     'signup'     => 'users#new'
  get     'login'      => 'sessions#new'
  post    'login'      => 'sessions#create'
  delete  'logout'     => 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
  resources :lists do
    resources :words
  end
  patch   'list_add_learning_user' => 'lists#add_learning_user'
  patch   'list_rem_learning_user' => 'lists#rem_learning_user'


  #resources :lists do     
  #  resources :words    
  #end 

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
