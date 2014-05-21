Rails.application.routes.draw do
  root "users#index"
  get 'users' => "users#index"
  get 'users/new' => "users#new"
  post 'users' => "users#create"
  get 'users/:id' => 'users#show', as: 'user'

  get 'users/forum' => 'users#forum'

  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'


  get 'sessions/al' => 'sessions#destroy'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'
  get 'profiles' => 'profiles#index'

  # get 'users/:id/team_memberships/new' => 'team_memberships#new', as: 'new_team_memberships'
  # post 'users/:id/team_memberships/' => 'team_memberships#create', as: 'user_team_memberships'

  get 'users/:id/pick_ups/new' => 'pick_ups#new', as: 'new_pick_up'
  post 'users/:id/pick_ups' => 'pick_ups#create', as: 'user_pick_ups'


  # resources :users, only: [:new, :create, :index, :show] do
  #   resources :pick_ups, only: [:new, :create]
  # end




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
