Medicapp::Application.routes.draw do
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  namespace :admin do
    resources :conventions
    resources :events
    resources :user_sessions
    resources :users
    resources :gallery_images
    resources :attendants
    resources :search
    match '/' => 'conventions#index', as: :home
    get 'login' => 'user_sessions#new', :as => :login
    post 'logout' => 'user_sessions#destroy', :as => :logout
  end

  root to: "interiors#index"
  resources :interiors, only: [:show]
  match 'calendar' => 'interiors#calendar', as: :calendar
  resources :contact_messages
  resources :attendants do
  collection do
    post :confirm
    post :correct
  end
end
  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
