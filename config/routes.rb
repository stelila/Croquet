Croquet::Application.routes.draw do
  root :to => 'croquet#home_page'
  match '/about_the_club', :to => 'croquet#about_the_club', via: :get
  match '/how_to_join', :to => 'croquet#how_to_join', via: :get
  match '/what_you_need', :to => 'croquet#what_you_need', via: :get
  match '/programme_2013', :to => 'croquet#programme_2013', via: :get
  match '/newsletters', :to => 'croquet#newsletters', via: :get
  match '/club_matters', :to => 'croquet#club_matters', via: :get
  match '/how_to_get_there', :to => 'croquet#how_to_get_there', via: :get
  match '/book_a_lawn', :to => 'croquet#book_a_lawn', via: :get
  match '/links_to_croquet_sites', :to => 'croquet#link_to_croquet_sites', via: :get
 
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
