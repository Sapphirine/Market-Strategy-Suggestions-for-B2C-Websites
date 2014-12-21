Rails.application.routes.draw do
  get 'brands/ford'

  resources :clusters

  resources :combinations

  root 'welcome#home'
  get 'introduction' => 'welcome#introduction'
  get 'by_car' => 'welcome#by_car'
  get 'brands/ford', to: 'brands#ford', via: 'get', as: :ford
  get 'brands/bmw', to: 'brands#bmw', via: 'get', as: :bmw
  get 'brands/chevrolet', to: 'brands#chevrolet', via: 'get', as: :chevrolet
  get 'brands/dodge', to: 'brands#dodge', via: 'get', as: :dodge
  get 'brands/gmc', to: 'brands#gmc', via: 'get', as: :gmc
  get 'brands/honda', to: 'brands#honda', via: 'get', as: :honda
  get 'brands/nissan', to: 'brands#nissan', via: 'get', as: :nissan
  get 'brands/toyota', to: 'brands#toyota', via: 'get', as: :toyota

  post 'redirect' => 'combinations#redirect'

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
